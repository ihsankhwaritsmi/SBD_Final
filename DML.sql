--block
INSERT INTO your_table_name (
        b_LicensePlate,
        b_brand,
        b_Type,
        b_InitialCondition,
        b_GPSCode
    )
VALUES (
        'B 1234 ABC',
        'Harley-Davidson',
        '1200cc',
        'Good',
        0
    ),
    ('B 5678 XYZ', 'Yamaha', '600cc', 'Excellent', 10),
    ('B 9012 LMN', 'KTM', '450cc', 'Fair', 20),
    ('B 3456 PQR', 'Honda', '1000cc', 'Poor', 30),
    ('B 7890 DEF', 'BMW', '1600cc', 'Excellent', 40),
    ('B 2345 GHI', 'Ducati', '1100cc', 'Good', 50),
    ('B 6789 JKL', 'Kawasaki', '900cc', 'Fair', 60),
    ('B 0123 STU', 'Suzuki', '750cc', 'Poor', 70),
    (
        'B 4567 VWX',
        'Harley-Davidson',
        '1700cc',
        'Good',
        80
    ),
    (
        'B 8901 YZA',
        'Triumph',
        '1300cc',
        'Excellent',
        90
    );
--block
INSERT INTO your_table_name (c_IdentityNumb, c_Phone, c_Address)
VALUES (
        '3201020101880001',
        '1234567890',
        'Jl. Merdeka No. 123, Jakarta'
    ),
    (
        '3302030202900002',
        '9876543210',
        'Jl. Aman Sejahtera No. 456, Bandung'
    ),
    (
        '3403040303920003',
        '5551112222',
        'Jl. Damai Indah No. 789, Surabaya'
    ),
    (
        '3504050404940004',
        '7778889999',
        'Jl. Sehat Bahagia No. 101, Yogyakarta'
    ),
    (
        '3605060505960005',
        '1112223333',
        'Jl. Harmoni No. 202, Medan'
    ),
    (
        '3706070606980006',
        '9990001111',
        'Jl. Makmur No. 303, Semarang'
    ),
    (
        '3807080707000007',
        '4445556666',
        'Jl. Pintu Surga No. 404, Malang'
    ),
    (
        '3908090808010008',
        '6667778888',
        'Jl. Berkat No. 505, Makassar'
    ),
    (
        '4009100909020009',
        '3334445555',
        'Jl. Jujur No. 606, Palembang'
    ),
    (
        '4110111011030010',
        '2223334444',
        'Jl. Suka No. 707, Denpasar'
    );