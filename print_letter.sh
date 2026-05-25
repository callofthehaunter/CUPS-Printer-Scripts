for file in *.pdf; do
  if [ -f "$file" ]; then
    echo "Printing $file in Greyscale..."
    lp -d Canon-MF750C-Series-UFR-II \ #adjust for your printer model
       -o media=Letter \
       -o InputSlot=Auto \
       -o OutputType=Grayscale \ #still testing for this canon printer. Envelope labels are greyscale anyway.
       -o ColorMode=Grayscale \
       "$file"
  fi
done
