class TotalStatus {
  String status;
  int total;

  TotalStatus({required this.status, required this.total});

  factory TotalStatus.fromJson(Map<String, dynamic> object) {
    return TotalStatus(status: object['status'], total: object['total']);
  }
}

class Wilayah {
  String? name;
  int? companyId;
  int? wilayahId;
  String? provinsi;
  String? kabupaten;
  String? kecamatan;
  String? desa;
  int? jumlahPresale;
  int? hargaPaket;
  int? sisaEndpoint;

  Wilayah({
    this.name,
    this.companyId,
    this.wilayahId,
    this.provinsi,
    this.kabupaten,
    this.kecamatan,
    this.desa,
    this.jumlahPresale,
    this.hargaPaket,
    this.sisaEndpoint = 0,
  });

  Wilayah.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    companyId = json['company_id'];
    wilayahId = json['wilayah_id'];
    provinsi = json['provinsi'];
    kabupaten = json['kabupaten'];
    kecamatan = json['kecamatan'];
    desa = json['desa'];
    jumlahPresale = json['jumlah_presale'];
    hargaPaket = json['harga_paket'];
    sisaEndpoint = json['sisa_endpoint'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['name'] = this.name;
    data['company_id'] = this.companyId;
    data['wilayah_id'] = this.wilayahId;
    data['provinsi'] = this.provinsi;
    data['kabupaten'] = this.kabupaten;
    data['kecamatan'] = this.kecamatan;
    data['desa'] = this.desa;
    data['jumlah_presale'] = this.jumlahPresale;
    data['harga_paket'] = this.hargaPaket;
    data['sisa_endpoint'] = this.sisaEndpoint;
    return data;
  }
}
