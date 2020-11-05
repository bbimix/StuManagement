package cn.edu.ujn.model;

public class testAJAX {
    private String nation;
    private String country;

    @Override
    public String toString() {
        return "testAJAX{" +
                "nation='" + nation + '\'' +
                ", country='" + country + '\'' +
                '}';
    }

    public String getNation() {
        return nation;
    }

    public void setNation(String nation) {
        this.nation = nation;
    }

    public String getCountry() {
        return country;
    }

    public void setCountry(String country) {
        this.country = country;
    }
}
