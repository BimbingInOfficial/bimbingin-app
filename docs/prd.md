# Product Requirements Document (PRD)

**Produk**: Learning & Teaching Style Assistant (Mobile App)  
**Platform**: Flutter (State Management: GetX)  
**Backend**: Firebase  
**Integrasi AI**:

- AI Chatbot (N8N, GPT API)
- AI Analitik (K-means Clustering & Cosine Similarity API via Flask)

---

## 1. Latar Belakang

Guru dan siswa seringkali kesulitan memahami gaya belajar dan gaya mengajar yang paling efektif.  
Aplikasi ini bertujuan membantu keduanya dengan asesmen berbasis kuisioner **Grasha-Riechmann**,  
kemudian memanfaatkan AI untuk memberikan rekomendasi personal, konsultasi, dan analitik.

---

## 2. Tujuan Produk

- Memberikan asesmen gaya belajar/mengajar yang akurat.
- Menyediakan AI chatbot untuk konsultasi dan rekomendasi strategi.
- Menyajikan dashboard personalisasi bagi guru dan siswa berdasarkan data analitik.

---

## 3. Fitur Utama

### 3.1. Asesmen Gaya Belajar & Mengajar

- **Deskripsi**: Kuisioner interaktif berdasarkan model Grasha-Riechmann.
- **Aktor**: Guru & Siswa
- **Output**: Hasil skor gaya belajar/mengajar dominan.
- **Integrasi**: Simpan hasil ke Firebase Firestore.

### 3.2. AI Chatbot Asisten Pembelajaran

- **Deskripsi**: Chatbot yang memberikan rekomendasi dan konsultasi.
- **Integrasi**:
  - Webhook request ke N8N (di VPS)
  - Model GPT API dengan konteks jawaban yang di-train sesuai hasil asesmen pengguna.

### 3.3. Riwayat Asesmen & Saran Personalisasi

- **Deskripsi**: Pengguna dapat melihat semua asesmen yang pernah dilakukan.
- **Data**: Skor, tipe gaya belajar/mengajar, rekomendasi yang diberikan AI.

### 3.4. Dashboard Guru

- **Deskripsi**: Menampilkan strategi mengajar berbasis hasil analitik siswa.
- **Integrasi**: Request ke API AI K-means Clustering & Cosine Similarity.
- **Data ditampilkan**:
  - Distribusi gaya belajar siswa di kelas.
  - Rekomendasi metode mengajar.

### 3.5. Dashboard Siswa

- **Deskripsi**: Menampilkan gaya belajar dominan & saran aktivitas belajar yang cocok.
- **Integrasi**: Berdasarkan hasil asesmen + analisis AI.

---

## 4. Alur Pengguna

1. **Registrasi/Login** (Firebase Authentication).
2. **Pilih peran**: Guru / Siswa.
3. **Lakukan asesmen** kuisioner Grasha-Riechmann.
4. **Simpan & analisis hasil** ke Firebase, panggil API AI jika perlu.
5. **Tampilkan rekomendasi** di dashboard masing-masing.
6. **Gunakan AI Chatbot** untuk konsultasi & tanya jawab.
7. **Lihat riwayat asesmen** kapan saja.

---
