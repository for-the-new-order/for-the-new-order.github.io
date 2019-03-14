var data = {
    items: []
};
var template = {
    "{{#each items}}": [
        {
            customData: {
                customTalents: {
                    REPLACEME: {
                        activation: this.Activation !== "Passive",
                        description: "{{Text}}",
                        name: "{{Name}}",
                        ranked: this.Ranked === "Yes",
                        setting: ["Star Wars"],
                        tier: this.Tier
                    }
                }
            }
        }
    ]
};
