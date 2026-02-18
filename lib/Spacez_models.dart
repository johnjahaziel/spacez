//property card - guests/bedroom/baths

Padding(
  padding: const EdgeInsets.only(left: 14.0, right: 12),
  child: Row(
    mainAxisSize: MainAxisSize.max,
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      asdaowdqwpdoqkwdp ok asd
      Row(
        children: [
          SvgPicture.asset(
            "assets/svg/guests.svg",
            asdaksdasdawdqwopd qwoksdp qwd
            height: 20,
          ),
          4.hs(),
          Text(
            "<${widget.data.property.maxOccupancy} Guests",
            style: inventoryStyle,
          ),     
        ],
      ),
      
      // Spacer(),
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Container(
          height: 15,
          width: 1,
          color: Color(0xFF7D817D),
        ),
      ),
      // Spacer(),

      Row(
        children: [
          SvgPicture.asset(
            "assets/svg/beds.svg",
            height: 20,
          ),
          4.hs(),
          Text(
            "${widget.data.property.noOfBedrooms} Bedrooms",
            style: inventoryStyle,
          ),
        ],
      ),

      // Spacer(),
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Container(
          height: 15,
          width: 1,
          color: Color(0xFF7D817D),
        ),
      ),
      // Spacer(),

      Row(
        children: [
          SvgPicture.asset(
            "assets/svg/baths.svg",
            height: 20,
          ),
          4.hs(),
          Text(
            "${widget.data.property.noOfBathrooms} Baths",
            style: inventoryStyle,
          ),
        ],
      ),
    ],
  ),
),
