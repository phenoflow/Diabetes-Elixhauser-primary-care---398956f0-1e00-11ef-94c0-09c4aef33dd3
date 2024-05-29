# David Metcalfe, James Masters, Antonella Delmestri, Andrew Judge, Daniel Perry, Cheryl Zogg, Belinda Gabbe, Matthew Costa, 2024.

import sys, csv, re

codes = [{"code":"C109J12","system":"readv2"},{"code":"C10FJ11","system":"readv2"},{"code":"C10E812","system":"readv2"},{"code":"66A5.00","system":"readv2"},{"code":"C10E.12","system":"readv2"},{"code":"L180500","system":"readv2"},{"code":"66AV.00","system":"readv2"},{"code":"C108.00","system":"readv2"},{"code":"TJ23z00","system":"readv2"},{"code":"C109.00","system":"readv2"},{"code":"C109900","system":"readv2"},{"code":"U602311","system":"readv2"},{"code":"C108E00","system":"readv2"},{"code":"66AH200","system":"readv2"},{"code":"C108900","system":"readv2"},{"code":"L180600","system":"readv2"},{"code":"C109J00","system":"readv2"},{"code":"C108.11","system":"readv2"},{"code":"C109.11","system":"readv2"},{"code":"C100011","system":"readv2"},{"code":"C109J11","system":"readv2"},{"code":"C109700","system":"readv2"},{"code":"C109D00","system":"readv2"},{"code":"C10E912","system":"readv2"},{"code":"U60231E","system":"readv2"},{"code":"250 AK","system":"readv2"},{"code":"TJ23.00","system":"readv2"},{"code":"C10EE12","system":"readv2"},{"code":"C100112","system":"readv2"},{"code":"C10EA12","system":"readv2"},{"code":"C10FJ00","system":"readv2"},{"code":"C10E412","system":"readv2"},{"code":"C108400","system":"readv2"},{"code":"ZRbH.00","system":"readv2"},{"code":"C108A00","system":"readv2"},{"code":"C108800","system":"readv2"},{"code":"250 AD","system":"readv2"}];
REQUIRED_CODES = 1;
with open(sys.argv[1], 'r') as file_in, open('diabetes-elixhauser-primary-care-potential-cases.csv', 'w', newline='') as file_out:
    csv_reader = csv.DictReader(file_in)
    csv_writer = csv.DictWriter(file_out, csv_reader.fieldnames + ["noninsulindependent-diabetes-uncomplicated-elixhauser-primary-care---primary-identified"])
    csv_writer.writeheader();
    codes_identified = 0;
    for row in csv_reader:
        newRow = row.copy();
        for cell in row:
            # Iterate cell lists (e.g. codes)
            for item in re.findall(r'\(([^,]*)\,', row[cell]):
                if(item in list(map(lambda code: code['code'], codes))): codes_identified+=1;
                if(codes_identified>=REQUIRED_CODES):
                    newRow["noninsulindependent-diabetes-uncomplicated-elixhauser-primary-care---primary-identified"] = "CASE";
                    break;
            if(codes_identified>=REQUIRED_CODES): break;
        if(codes_identified<REQUIRED_CODES):
            newRow["noninsulindependent-diabetes-uncomplicated-elixhauser-primary-care---primary-identified"] = "UNK";
        codes_identified=0;
        csv_writer.writerow(newRow)
