# %%
from __future__ import division
import numpy as np
import matplotlib.pyplot as plt

intp = 1  #tomar uno de cada cien valores, para graficar rapido

# Load data from the .txt file
#ssh -Y cic@148.204.66.123
#ssh -Y alex@148.204.66.53

#source ~/miniconda3/bin/activate
#python3 tb_4x8x4_proc.py
#scp alex@148.204.66.53:'/home/cic/Desktop/EDA/SNN_IPN/sim_results/*.pdf' .
#scp cic@148.204.66.123:'/home/cic/Desktop/EDA/SNN_IPN/sim_results/*.pdf' .

#scp alex@148.204.66.53:/home/alex/.xschem/simulations/data.raw .
#scp alex@148.204.66.53:/home/alex/Desktop/EDA/SNN_IPN/sim_results/tb_4x8x4_data.txt . 
#scp cic@148.204.66.123:/home/cic/Desktop/EDA/SNN_IPN/sim_results/tb_4x8x4_data.txt  .

BSIZE_SP = 512 # Max size of a line of data; we don't want to read the
               # whole file to find a line, in case file does not have
               # expected structure.

MDATA_LIST = [b'title', b'date', b'plotname', b'flags', b'no. variables',
              b'no. points', b'dimensions', b'command', b'option']

def rawread(fname: str):
    """Read ngspice binary raw files. Return tuple of the data, and the
    plot metadata. The dtype of the data contains field names. This is
    not very robust yet, and only supports ngspice.
    
    >>> darr, mdata = rawread('test.py')
    >>> darr.dtype.names
    >>> plot(np.real(darr['frequency']), np.abs(darr['v(out)']))
    """
    # Example header of raw file
    # Title: rc band pass example circuit
    # Date: Sun Feb 21 11:29:14  2016
    # Plotname: AC Analysis
    # Flags: complex
    # No. Variables: 3
    # No. Points: 41
    # Variables:
    #         0       frequency       frequency       grid=3
    #         1       v(out)  voltage
    #         2       v(in)   voltage
    # Binary:
    fp = open(fname, 'rb')
    arrs = []
    plots = []
    plot = {}
    while (True):
        try:
            # mdata = fp.readline(BSIZE_SP).split(b':', maxsplit=1)
            mdata = fp.readline().split(b':', maxsplit=1)
        except:
            raise
        if len(mdata) == 2:
            if mdata[0].lower() in MDATA_LIST:
                plot[mdata[0].lower()] = mdata[1].strip()
            if mdata[0].lower() == b'variables':
                nvars = int(plot[b'no. variables'])
                npoints = int(plot[b'no. points'])
                plot['varnames'] = []
                plot['varunits'] = []
                for varn in range(nvars):
                    # varspec = (fp.readline(BSIZE_SP).strip().decode('ascii').split())
                    varspec = (fp.readline().strip().decode('ascii').split())
                    assert(varn == int(varspec[0]))
                    plot['varnames'].append(varspec[1])
                    plot['varunits'].append(varspec[2])
            if mdata[0].lower() == b'binary':
                rowdtype = np.dtype({'names': plot['varnames'],
                                     'formats': [np.complex_ if b'complex'
                                                 in plot[b'flags']
                                                 else np.float64]*nvars})
                # We should have all the metadata by now
                arrs.append(np.fromfile(fp, dtype=rowdtype, count=npoints))
                plots.append(plot)
                plot = {} # reset the plot dict
                fp.readline() # Read to the end of line
        else:
            break
    return (arrs[0], plots)

data, dicc = rawread("data2.raw")
    

# %%
fig, [ax0, ax1, ax2] = plt.subplots(3, figsize=(10,12))
ax0.plot(data["time"][::intp], data["v(tau)"][::intp], label = f"tau")
ax0.legend()
ax0.grid()
ax0.set_xlabel("Time [ms]")
ax0.set_ylabel("tau[V]")

ax1.plot(data["time"][::intp], data["v(x)"][::intp], label = f"x")
ax1.plot(data["time"][::intp], data["v(dx)"][::intp], label = f"dx")
ax1.legend()
ax1.grid()
ax1.set_xlabel("Time [ms]")
ax1.set_ylabel("x and dx[V]")
ax2.plot(data["time"][::intp], data["v(th)"][::intp], label = f"th")
ax2.plot(data["time"][::intp], data["v(dth)"][::intp], label = f"dth")
ax2.legend()
ax2.grid()
ax2.set_xlabel("Time [ms]")
ax2.set_ylabel("th and dth[V]")
fig.suptitle("mwip inputs and outputs")
plt.tight_layout(rect=[0, 0.03, 1, 0.95])
fig.savefig("SpaceState.pdf")

# %%
fig, [ax0, ax1, ax2] = plt.subplots(3, figsize=(10,8))
ax0.plot(data["time"][::intp], data["v(tau_nom)"][::intp], label = f"tau_nom")
ax0.legend()
ax0.grid()
ax0.set_xlabel("Time [ms]")
ax0.set_ylabel("tau[V]")

ax1.plot(data["time"][::intp], data["v(x_nom)"][::intp], label = f"x_nom")
ax1.plot(data["time"][::intp], data["v(dx_nom)"][::intp], label = f"dx_nom")
ax1.legend()
ax1.grid()
ax1.set_xlabel("Time [ms]")
ax1.set_ylabel("x and dx[V]")
ax2.plot(data["time"][::intp], data["v(th_nom)"][::intp], label = f"th_nom")
ax2.plot(data["time"][::intp], data["v(dth_nom)"][::intp], label = f"dth_nom")
ax2.legend()
ax2.grid()
ax2.set_xlabel("Time [ms]")
ax2.set_ylabel("th and dth[V]")
fig.suptitle("Normalized mwip inputs and outputs")
plt.tight_layout(rect=[0, 0.03, 1, 0.95])
fig.savefig("NormSpaceState.pdf")

# %%
fig, ax2 = plt.subplots(1, figsize=(12,5))
mem_jk = []
for k in range(32):
    Imem_label = "i(v.x1.x7.xstdp" +  str(k+1) + ".vmr)"
    Vte_label =  "v(x1.x7.xstdp" +  str(k+1) + ".te)"
    Vbe_label = "v(x1.x7.xstdp" +  str(k+1) + ".be)"
    Imem= data[Imem_label][::intp]
    Vte = data[Vte_label][::intp]
    Vbe = data[Vbe_label][::intp]
    mem = (Vbe - Vte)/Imem 
    ax2.plot(data["time"][::intp], mem, ".",label = f"jk{k+1}",linewidth=1, markersize=2)
    mem_jk.append(mem)


# ax.legend()
ax2.grid()
ax2.set_xlabel("Time [ms]")
ax2.set_ylabel("Memristance [Ohms]")
ax2.set_title("Memristance value jk")
ax2.set_ylim((-0.2e6, 3.5e6))
fig.savefig('weights.pdf')

# %%
fig, axes = plt.subplots(8, figsize=(10,6))
mem_jk = []
for j in range(8):
    nj = "v(x1.j" +  str(j+1) + ")"
    axes[j].plot(data["time"][::intp], data[nj][::intp] , label = f"nj{j+1}",linewidth=1, markersize=2)
plt.savefig("normalized space state")

fig.savefig("spikesFirstlayer.pdf")
# %%
fig, axes = plt.subplots(4, figsize=(10,6))
mem_jk = []
for j in range(4):
    nj = "v(x1.k" +  str(j+1) + ")"
    axes[j].plot(data["time"][::intp], data[nj][::intp] , label = f"nj{j+1}",linewidth=1, markersize=2)

fig.savefig("spikesSecondLayer.pdf")
# %%



