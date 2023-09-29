p "conencted"

def null?(row)
  p row.fields
  row.fields.all?(&:blank?)
end

def check_fields(row)
  p row.to_h
end
