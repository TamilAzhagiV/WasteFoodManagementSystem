# convert_to_utf8.py
with open('sms.json', 'r', encoding='utf-16') as f:
    data = f.read()

# Save the file in UTF-8 encoding
with open('sms_utf8.json', 'w', encoding='utf-8') as f:
    f.write(data)

print("Conversion to UTF-8 completed: sms_utf8.json")
