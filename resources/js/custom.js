// resources/js/custom.js

document.addEventListener("DOMContentLoaded", () => {
  console.log("✅ custom.js berhasil jalan!");

  // Tambah Fasilitas
  const addBtn = document.querySelector(".add-btn");
  if (addBtn) {
    addBtn.addEventListener("click", () => {
      alert("Form Tambah Fasilitas muncul di sini (nanti bisa modal).");
    });
  }

  // Edit
  document.querySelectorAll(".edit").forEach(btn => {
    btn.addEventListener("click", () => {
      alert("Form Edit Fasilitas muncul di sini.");
    });
  });

  // Delete
  document.querySelectorAll(".delete").forEach(btn => {
    btn.addEventListener("click", () => {
      if (confirm("Yakin hapus fasilitas ini?")) {
        alert("Fasilitas terhapus!");
      }
    });
  });

  // Dashboard counter
  const counters = document.querySelectorAll(".counter");
  counters.forEach(counter => {
    let target = +counter.getAttribute("data-target");
    let count = 0;
    let step = target / 50;
    const update = () => {
      if (count < target) {
        count += step;
        counter.innerText = Math.ceil(count);
        requestAnimationFrame(update);
      } else {
        counter.innerText = target;
      }
    };
    update();
  });
});
// resources/js/custom.js

document.addEventListener("DOMContentLoaded", () => {
  console.log("✅ custom.js berhasil jalan!");

  // Tambah Fasilitas
  const addBtn = document.querySelector(".add-btn");
  if (addBtn) {
    addBtn.addEventListener("click", () => {
      alert("Form Tambah Fasilitas muncul di sini (nanti bisa modal).");
    });
  }

  // Edit
  document.querySelectorAll(".edit").forEach(btn => {
    btn.addEventListener("click", () => {
      alert("Form Edit Fasilitas muncul di sini.");
    });
  });

  // Delete
  document.querySelectorAll(".delete").forEach(btn => {
    btn.addEventListener("click", () => {
      if (confirm("Yakin hapus fasilitas ini?")) {
        alert("Fasilitas terhapus!");
      }
    });
  });

  // Dashboard counter
  const counters = document.querySelectorAll(".counter");
  counters.forEach(counter => {
    let target = +counter.getAttribute("data-target");
    let count = 0;
    let step = target / 50;
    const update = () => {
      if (count < target) {
        count += step;
        counter.innerText = Math.ceil(count);
        requestAnimationFrame(update);
      } else {
        counter.innerText = target;
      }
    };
    update();
  });

  // 🔍 Search filter
  const searchInput = document.getElementById("searchInput");
  const searchButton = document.getElementById("searchButton");
  const table = document.getElementById("fasilitasTable");

  function filterTable() {
    const input = searchInput.value.toLowerCase();
    const tr = table.getElementsByTagName("tr");
    let found = false;

    for (let i = 1; i < tr.length; i++) {
      const row = tr[i];
      const text = row.textContent.toLowerCase();
      if (text.includes(input)) {
        row.style.display = "";
        found = true;
      } else {
        row.style.display = "none";
      }
    }

    // kalau gak ada hasil
    let noDataRow = document.getElementById("noDataRow");
    if (!found) {
      if (!noDataRow) {
        noDataRow = document.createElement("tr");
        noDataRow.id = "noDataRow";
        noDataRow.innerHTML = `<td colspan="8" style="text-align:center; color:red;">Data tidak ditemukan</td>`;
        table.querySelector("tbody").appendChild(noDataRow);
      }
    } else {
      if (noDataRow) noDataRow.remove();
    }
  }

  if (searchInput && searchButton) {
    searchButton.addEventListener("click", filterTable);
    searchInput.addEventListener("keyup", (event) => {
      if (event.key === "Enter") filterTable();
    });
  }
});
// resources/js/custom.js
document.addEventListener("DOMContentLoaded", function () {
    // ✅ Notifikasi sederhana
    function showToast(message, type = "success") {
        const toast = document.createElement("div");
        toast.className = `toast ${type}`;
        toast.textContent = message;

        document.body.appendChild(toast);
        setTimeout(() => toast.classList.add("show"), 10);

        setTimeout(() => {
            toast.classList.remove("show");
            setTimeout(() => toast.remove(), 300);
        }, 3000);
    }

    // ✅ Validasi form tambah/edit
    const forms = document.querySelectorAll("form");
    forms.forEach(form => {
        form.addEventListener("submit", function (e) {
            const kapasitas = form.querySelector("input[name='kapasitas']");
            const hargaBulanan = form.querySelector("input[name='harga_bulanan']");
            const hargaTahunan = form.querySelector("input[name='harga_tahunan']");

            if (kapasitas && kapasitas.value <= 0) {
                e.preventDefault();
                showToast("Kapasitas harus lebih dari 0!", "error");
            }
            if (hargaBulanan && hargaBulanan.value <= 0) {
                e.preventDefault();
                showToast("Harga bulanan harus valid!", "error");
            }
            if (hargaTahunan && hargaTahunan.value <= 0) {
                e.preventDefault();
                showToast("Harga tahunan harus valid!", "error");
            }
        });
    });

    // ✅ Konfirmasi hapus dengan modal
    const deleteButtons = document.querySelectorAll(".delete");
    deleteButtons.forEach(btn => {
        btn.addEventListener("click", function (e) {
            e.preventDefault();

            const row = btn.closest("tr");
            const namaAsrama = row.querySelector("td:nth-child(2)").textContent;

            const modal = document.createElement("div");
            modal.className = "modal";
            modal.innerHTML = `
                <div class="modal-content">
                    <h3>Konfirmasi Hapus</h3>
                    <p>Yakin ingin menghapus asrama <b>${namaAsrama}</b>?</p>
                    <div class="modal-actions">
                        <button class="btn-cancel">Batal</button>
                        <form method="POST" action="${btn.dataset.url}">
                            <input type="hidden" name="_token" value="${document.querySelector('meta[name="csrf-token"]').content}">
                            <input type="hidden" name="_method" value="DELETE">
                            <button type="submit" class="btn-delete">Hapus</button>
                        </form>
                    </div>
                </div>
            `;
            document.body.appendChild(modal);

            modal.querySelector(".btn-cancel").addEventListener("click", () => modal.remove());
        });
    });
});

