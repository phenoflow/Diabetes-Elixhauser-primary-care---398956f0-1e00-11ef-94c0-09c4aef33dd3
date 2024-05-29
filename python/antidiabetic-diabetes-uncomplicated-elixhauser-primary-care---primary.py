# David Metcalfe, James Masters, Antonella Delmestri, Andrew Judge, Daniel Perry, Cheryl Zogg, Belinda Gabbe, Matthew Costa, 2024.

import sys, csv, re

codes = [{"code":"2G5K.00","system":"readv2"},{"code":"42WZ.00","system":"readv2"},{"code":"66AO.00","system":"readv2"},{"code":"8IAs.00","system":"readv2"},{"code":"250 G","system":"readv2"},{"code":"2G5A.00","system":"readv2"},{"code":"ZLA2500","system":"readv2"},{"code":"66AK.00","system":"readv2"},{"code":"66At011","system":"readv2"},{"code":"250 AB","system":"readv2"},{"code":"M037200","system":"readv2"},{"code":"250 HP","system":"readv2"},{"code":"250 NT","system":"readv2"},{"code":"250 PR","system":"readv2"},{"code":"250 JA","system":"readv2"},{"code":"9Oy0200","system":"readv2"},{"code":"66As.00","system":"readv2"},{"code":"66AN.00","system":"readv2"},{"code":"13AB.00","system":"readv2"},{"code":"9Oy0000","system":"readv2"},{"code":"66At.00","system":"readv2"},{"code":"9N2i.00","system":"readv2"},{"code":"250 DR","system":"readv2"},{"code":"66Ac.00","system":"readv2"},{"code":"9NJy.00","system":"readv2"},{"code":"66Ai.00","system":"readv2"},{"code":"66AI.00","system":"readv2"},{"code":"8H2J.00","system":"readv2"},{"code":"250 CT","system":"readv2"},{"code":"66AJz00","system":"readv2"},{"code":"9Oy0400","system":"readv2"},{"code":"9Oy0300","system":"readv2"},{"code":"66AG.00","system":"readv2"},{"code":"250 H","system":"readv2"},{"code":"2BBM.00","system":"readv2"},{"code":"13B1.00","system":"readv2"},{"code":"8A13.00","system":"readv2"},{"code":"8H3O.00","system":"readv2"},{"code":"66At100","system":"readv2"},{"code":"250 JL","system":"readv2"},{"code":"250 AT","system":"readv2"},{"code":"13L4.11","system":"readv2"},{"code":"13Y1.00","system":"readv2"},{"code":"250 JK","system":"readv2"},{"code":"2G5G.00","system":"readv2"},{"code":"250 HC","system":"readv2"},{"code":"66At000","system":"readv2"},{"code":"66AH.00","system":"readv2"},{"code":"66AJ.00","system":"readv2"},{"code":"66At111","system":"readv2"},{"code":"66A4.00","system":"readv2"},{"code":"66AA.11","system":"readv2"},{"code":"66Au.00","system":"readv2"},{"code":"9b92000","system":"readv2"},{"code":"ZL22500","system":"readv2"},{"code":"250 GA","system":"readv2"},{"code":"42c..00","system":"readv2"},{"code":"42W..00","system":"readv2"},{"code":"13AC.00","system":"readv2"},{"code":"8CA4100","system":"readv2"},{"code":"2G5B.00","system":"readv2"},{"code":"66A3.00","system":"readv2"}];
REQUIRED_CODES = 1;
with open(sys.argv[1], 'r') as file_in, open('diabetes-elixhauser-primary-care-potential-cases.csv', 'w', newline='') as file_out:
    csv_reader = csv.DictReader(file_in)
    csv_writer = csv.DictWriter(file_out, csv_reader.fieldnames + ["antidiabetic-diabetes-uncomplicated-elixhauser-primary-care---primary-identified"])
    csv_writer.writeheader();
    codes_identified = 0;
    for row in csv_reader:
        newRow = row.copy();
        for cell in row:
            # Iterate cell lists (e.g. codes)
            for item in re.findall(r'\(([^,]*)\,', row[cell]):
                if(item in list(map(lambda code: code['code'], codes))): codes_identified+=1;
                if(codes_identified>=REQUIRED_CODES):
                    newRow["antidiabetic-diabetes-uncomplicated-elixhauser-primary-care---primary-identified"] = "CASE";
                    break;
            if(codes_identified>=REQUIRED_CODES): break;
        if(codes_identified<REQUIRED_CODES):
            newRow["antidiabetic-diabetes-uncomplicated-elixhauser-primary-care---primary-identified"] = "UNK";
        codes_identified=0;
        csv_writer.writerow(newRow)
