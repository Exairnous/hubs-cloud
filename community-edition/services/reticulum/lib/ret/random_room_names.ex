defmodule Ret.RandomRoomNames do
  @moduledoc false

  @adjectives [
    "able",
    "absolute",
    "acceptable",
    "acclaimed",
    "accomplished",
    "accurate",
    "aching",
    "acrobatic",
    "adorable",
    "adventurous",
    "basic",
    "belated",
    "beloved",
    "calm",
    "candid",
    "capital",
    "carefree",
    "caring",
    "cautious",
    "celebrated",
    "charming",
    "daring",
    "darling",
    "dearest",
    "each",
    "eager",
    "early",
    "earnest",
    "easy",
    "easygoing",
    "ecstatic",
    "edible",
    "fabulous",
    "fair",
    "faithful",
    "familiar",
    "famous",
    "fancy",
    "fantastic",
    "far",
    "generous",
    "gentle",
    "genuine",
    "giant",
    "handmade",
    "handsome",
    "handy",
    "happy",
    "icy",
    "ideal",
    "identical",
    "keen",
    "lasting",
    "lavish",
    "magnificent",
    "majestic",
    "mammoth",
    "marvelous",
    "natural",
    "obedient",
    "palatable",
    "parched",
    "passionate",
    "pastel",
    "peaceful",
    "perfect",
    "perfumed",
    "quaint",
    "qualified",
    "radiant",
    "rapid",
    "rare",
    "safe",
    "sandy",
    "satisfied",
    "scaly",
    "scarce",
    "scared",
    "scary",
    "scented",
    "scientific",
    "secret",
    "sentimental",
    "talkative",
    "tangible",
    "tart",
    "tasty",
    "tattered",
    "teeming",
    "ultimate",
    "uncommon",
    "unconscious",
    "understated",
    "warm",
    "active",
    "adept",
    "admirable",
    "admired",
    "adorable",
    "adored",
    "advanced",
    "affectionate",
    "beneficial",
    "best",
    "better",
    "big",
    "cheerful",
    "cheery",
    "chief",
    "chilly",
    "classic",
    "clean",
    "clear",
    "clever",
    "decent",
    "decisive",
    "deep",
    "defiant",
    "definitive",
    "delectable",
    "delicious",
    "elaborate",
    "elastic",
    "elated",
    "elegant",
    "elementary",
    "elliptical",
    "fast",
    "favorable",
    "favorite",
    "fearless",
    "gifted",
    "glamorous",
    "gleaming",
    "glittering",
    "harmonious",
    "imaginative",
    "immense",
    "jealous",
    "kind",
    "leafy",
    "legal",
    "mature",
    "mean",
    "nautical",
    "neat",
    "necessary",
    "needy",
    "oddball",
    "offbeat",
    "periodic",
    "perky",
    "personal",
    "pertinent",
    "petty",
    "quarterly",
    "ready",
    "real",
    "realistic",
    "reasonable",
    "regal",
    "serene",
    "shabby",
    "sharp",
    "shiny",
    "showy",
    "shy",
    "silky",
    "tempting",
    "tense",
    "terrific",
    "testy",
    "thankful",
    "uniform",
    "unique",
    "vast",
    "weary",
    "wee",
    "welcome",
    "agile",
    "alarmed",
    "alert",
    "alive",
    "bleak",
    "blissful",
    "blushing",
    "coarse",
    "colorful",
    "colossal",
    "comfortable",
    "compassionate",
    "complete",
    "delightful",
    "dense",
    "dependable",
    "dependent",
    "descriptive",
    "detailed",
    "determined",
    "devoted",
    "different",
    "eminent",
    "emotional",
    "enchanted",
    "enchanting",
    "energetic",
    "enormous",
    "fine",
    "finished",
    "firm",
    "firsthand",
    "fixed",
    "flashy",
    "flawless",
    "glorious",
    "glossy",
    "golden",
    "good",
    "gorgeous",
    "graceful",
    "healthy",
    "heartfelt",
    "hearty",
    "helpful",
    "impartial",
    "impressive",
    "jolly",
    "jovial",
    "lighthearted",
    "likable",
    "lined",
    "mellow",
    "melodic",
    "memorable",
    "mild",
    "new",
    "opulent",
    "playful",
    "pleasant",
    "pleasing",
    "plump",
    "plush",
    "polished",
    "polite",
    "reliable",
    "relieved",
    "remarkable",
    "remote",
    "respectful",
    "responsible",
    "simple",
    "simplistic",
    "sizzling",
    "sleepy",
    "slight",
    "slim",
    "smart",
    "smooth",
    "snappy",
    "snoopy",
    "thirsty",
    "this",
    "thorough",
    "those",
    "thoughtful",
    "united",
    "vibrant",
    "vicious",
    "wellmade",
    "whimsical",
    "whirlwind",
    "zesty",
    "amazing",
    "ambitious",
    "ample",
    "amused",
    "amusing",
    "ancient",
    "angelic",
    "antique",
    "bold",
    "bossy",
    "both",
    "bouncy",
    "bountiful",
    "complex",
    "conscious",
    "considerate",
    "constant",
    "content",
    "conventional",
    "cooked",
    "cool",
    "cooperative",
    "diligent",
    "dimwitted",
    "direct",
    "discrete",
    "envious",
    "essential",
    "ethical",
    "euphoric",
    "flippant",
    "fluffy",
    "flustered",
    "focused",
    "fond",
    "gracious",
    "grand",
    "grandiose",
    "granular",
    "grateful",
    "grave",
    "great",
    "hidden",
    "high",
    "hilarious",
    "homely",
    "incomparable",
    "incredible",
    "infamous",
    "joyful",
    "lively",
    "loathsome",
    "lonely",
    "long",
    "mindless",
    "miniature",
    "minor",
    "misty",
    "next",
    "nice",
    "nifty",
    "nimble",
    "orderly",
    "organic",
    "ornate",
    "popular",
    "posh",
    "positive",
    "potable",
    "powerful",
    "powerless",
    "precious",
    "present",
    "prestigious",
    "quick",
    "rewarding",
    "rich",
    "right",
    "sociable",
    "soft",
    "solid",
    "some",
    "sophisticated",
    "soulful",
    "sparkling",
    "spectacular",
    "speedy",
    "spicy",
    "spiffy",
    "spirited",
    "spiteful",
    "splendid",
    "spotless",
    "spry",
    "thrifty",
    "tidy",
    "tight",
    "timely",
    "tinted",
    "unruly",
    "untimely",
    "violet",
    "wicked",
    "wide",
    "wild",
    "willing",
    "winding",
    "windy",
    "zigzag",
    "apprehensive",
    "appropriate",
    "artistic",
    "assured",
    "astonishing",
    "bright",
    "brilliant",
    "bronze",
    "coordinated",
    "courageous",
    "courteous",
    "crafty",
    "creamy",
    "creative",
    "crisp",
    "distant",
    "distinct",
    "downright",
    "evergreen",
    "everlasting",
    "every",
    "evil",
    "excellent",
    "excitable",
    "exemplary",
    "exhausted",
    "forthright",
    "fortunate",
    "fragrant",
    "frank",
    "free",
    "frequent",
    "fresh",
    "friendly",
    "frightened",
    "frigid",
    "gripping",
    "grounded",
    "honest",
    "honorable",
    "honored",
    "hopeful",
    "hospitable",
    "hot",
    "huge",
    "infatuated",
    "infinite",
    "informal",
    "insistent",
    "instructive",
    "juicy",
    "jumbo",
    "knowing",
    "knowledgeable",
    "longterm",
    "loud",
    "lovable",
    "loving",
    "modern",
    "modest",
    "monumental",
    "normal",
    "notable",
    "outgoing",
    "precious",
    "pretty",
    "prickly",
    "primary",
    "pristine",
    "private",
    "prize",
    "productive",
    "profitable",
    "quiet",
    "quintessential",
    "roasted",
    "robust",
    "square",
    "squiggly",
    "stable",
    "staid",
    "starry",
    "steel",
    "stimulating",
    "striking",
    "striped",
    "strong",
    "studious",
    "stunning",
    "tough",
    "trained",
    "treasured",
    "tremendous",
    "triangular",
    "tricky",
    "unused",
    "unusual",
    "upbeat",
    "virtual",
    "witty",
    "wonderful",
    "wooden",
    "worldly",
    "youthful",
    "attached",
    "attentive",
    "attractive",
    "austere",
    "authentic",
    "automatic",
    "aware",
    "awesome",
    "bubbly",
    "bustling",
    "busy",
    "buttery",
    "cuddly",
    "cultured",
    "curly",
    "curvy",
    "cute",
    "cylindrical",
    "downright",
    "dramatic",
    "excited",
    "exciting",
    "exotic",
    "experienced",
    "expert",
    "frosty",
    "fruitful",
    "full",
    "fumbling",
    "funny",
    "fussy",
    "growing",
    "grown",
    "gummy",
    "humble",
    "humongous",
    "hungry",
    "intelligent",
    "interesting",
    "known",
    "kooky",
    "loyal",
    "lucky",
    "luminous",
    "lustrous",
    "luxurious",
    "multicolored",
    "mysterious",
    "noteworthy",
    "numb",
    "nutritious",
    "outstanding",
    "overjoyed",
    "proper",
    "proud",
    "prudent",
    "punctual",
    "puny",
    "pure",
    "puzzled",
    "puzzling",
    "quirky",
    "stupendous",
    "sturdy",
    "stylish",
    "subdued",
    "subtle",
    "sunny",
    "super",
    "superb",
    "supportive",
    "surprised",
    "sweet",
    "swift",
    "sympathetic",
    "trivial",
    "trusting",
    "trustworthy",
    "trusty",
    "truthful",
    "twin",
    "usable",
    "used",
    "useful",
    "utilized",
    "vital",
    "vivid",
    "worried",
    "worthwhile",
    "worthy",
    "writhing",
    "wry",
    "yummy",
    "chocolate",
    "crimson",
    "cyan",
    "fuchsia",
    "gold",
    "honeydew",
    "lime",
    "linen",
    "magenta",
    "olive",
    "peru",
    "salmon",
    "seashell",
    "sienna",
    "snow",
    "thistle",
    "tomato",
    "transparent",
    "turquoise",
    "violet"
  ]

  @nouns [
    "space",
    "land",
    "world",
    "universe",
    "plane",
    "room",
    "nation",
    "plaza",
    "gathering",
    "meetup",
    "get together",
    "conclave",
    "party",
    "domain",
    "dominion",
    "realm",
    "square",
    "commons",
    "park",
    "cosmos",
    "sphere",
    "terrain",
    "spot",
    "zone",
    "area",
    "tract",
    "turf",
    "place",
    "territory",
    "volume",
    "camp",
    "picnic",
    "outing",
    "vacation",
    "adventure",
    "exploration",
    "outing",
    "walkabout",
    "safari",
    "venture",
    "roundtable",
    "barbecue",
    "celebration",
    "festivity",
    "gala",
    "shindig",
    "social",
    "convention",
    "assembly",
    "congregation",
    "rendezvous",
    "huddle",
    "meet",
    "soiree"
  ]

  defp random_from(words) do
    Enum.at(words, :rand.uniform(length(words)) - 1)
  end

  def generate_room_name() do
    [@adjectives, @adjectives, @nouns]
    |> Stream.map(&random_from/1)
    |> Stream.map(&String.capitalize(&1))
    |> Enum.join(" ")
  end
end
