# David Metcalfe, James Masters, Antonella Delmestri, Andrew Judge, Daniel Perry, Cheryl Zogg, Belinda Gabbe, Matthew Costa, 2024.

import sys, csv, re

codes = [{"code":"9N1Q.00","system":"readv2"},{"code":"9N4p.00","system":"readv2"},{"code":"ZRB4.00","system":"readv2"},{"code":"9N0n.00","system":"readv2"},{"code":"9N1i.00","system":"readv2"},{"code":"9NM0.00","system":"readv2"},{"code":"9N1v.00","system":"readv2"},{"code":"9N0o.00","system":"readv2"},{"code":"9N4I.00","system":"readv2"},{"code":"ZRB4.11","system":"readv2"},{"code":"9N0m.00","system":"readv2"},{"code":"8CMW700","system":"readv2"},{"code":"9OL..11","system":"readv2"}];
REQUIRED_CODES = 1;
with open(sys.argv[1], 'r') as file_in, open('diabetes-elixhauser-primary-care-potential-cases.csv', 'w', newline='') as file_out:
    csv_reader = csv.DictReader(file_in)
    csv_writer = csv.DictWriter(file_out, csv_reader.fieldnames + ["clinical-diabetes-uncomplicated-elixhauser-primary-care---primary-identified"])
    csv_writer.writeheader();
    codes_identified = 0;
    for row in csv_reader:
        newRow = row.copy();
        for cell in row:
            # Iterate cell lists (e.g. codes)
            for item in re.findall(r'\(([^,]*)\,', row[cell]):
                if(item in list(map(lambda code: code['code'], codes))): codes_identified+=1;
                if(codes_identified>=REQUIRED_CODES):
                    newRow["clinical-diabetes-uncomplicated-elixhauser-primary-care---primary-identified"] = "CASE";
                    break;
            if(codes_identified>=REQUIRED_CODES): break;
        if(codes_identified<REQUIRED_CODES):
            newRow["clinical-diabetes-uncomplicated-elixhauser-primary-care---primary-identified"] = "UNK";
        codes_identified=0;
        csv_writer.writerow(newRow)
