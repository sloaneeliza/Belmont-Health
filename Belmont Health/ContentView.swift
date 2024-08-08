import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            ZStack {
                RoundedRectangle(cornerRadius: 10, style: .circular)
                    .stroke(Color(.displayP3, red: 16/255, green: 45/255, blue: 116/255), lineWidth: 60)
                    .background(RoundedRectangle(cornerRadius: 10, style: .circular).fill(Color(.displayP3, red: 16/255, green: 46/255, blue: 118/255)))
                    .frame(height: 175, alignment: .top)
                    .clipped()
                    .offset(x: 0, y: -30)
                
                Text("In the event of an emergency, dial 911 or 615-460-6911 if on campus.")
                    .font(.system(.caption, design: .rounded, weight: .bold))
                    .fixedSize(horizontal: false, vertical: true)
                    .frame(width: 380)
                    .clipped()
                    .foregroundStyle(Color(.systemGray4))
                    .multilineTextAlignment(.center)
                    .offset(x: 0, y: 25)
                Text("Welcome to Belmont Student Health Services")
                    .font(.system(.title2, design: .rounded, weight: .bold))
                    .multilineTextAlignment(.center)
                    .offset(x: 0, y: -30)
                    .foregroundStyle(Color(.systemGray6))
            }
            .offset(x: 0, y: 20)
            ZStack {
                RoundedRectangle(cornerRadius: 10, style: .continuous)
                    .fill(Color(.displayP3, red: 192/255, green: 10/255, blue: 16/255))
                    .frame(width: 370, height: 160)
                    .clipped()
                    .offset(x: 0, y: -30)
                Image(systemName: "syringe.fill")
                    .imageScale(.large)
                    .symbolRenderingMode(.monochrome)
                    .font(.system(.title2, weight: .semibold))
                    .foregroundStyle(Color(.displayP3, red: 237/255, green: 120/255, blue: 116/255))
                    .offset(x: 160, y: -78)
                Image(systemName: "cross.vial.fill")
                    .imageScale(.large)
                    .symbolRenderingMode(.monochrome)
                    .font(.system(.title2, weight: .medium))
                    .foregroundStyle(Color(.displayP3, red: 237/255, green: 120/255, blue: 116/255))
                    .offset(x: -160, y: -78)
                Text("Immunizations")
                    .font(.system(.largeTitle, design: .rounded, weight: .bold))
                    .foregroundStyle(Color(.displayP3, red: 247/255, green: 207/255, blue: 206/255))
                    .offset(x: 0, y: -80)
                Text("Belmont’s Clinic offers the Pfizer COVID-19 vaccine and the flu vaccine. Both can be administered in a singular appointment, schedule now!")
                    .font(.system(.body, design: .rounded, weight: .bold))
                    .foregroundStyle(Color(.displayP3, red: 242/255, green: 175/255, blue: 173/255))
                    .multilineTextAlignment(.center)
                    .offset(x: 0, y: -4)
            }
            .offset(x: 0, y: 30)
            VStack {
                Text("Make an Appointment")
                    .font(.system(.title, design: .rounded, weight: .bold))
                    .foregroundStyle(Color(.displayP3, red: 50/255, green: 50/255, blue: 50/255))
                    .offset(x: -45, y: 5)
                
                HStack {
                    Button(action: {
                        if let url = URL(string: "https://belmont.edu/health-services/") {
                            UIApplication.shared.open(url)
                        }
                    }) {
                        ZStack {
                            RoundedRectangle(cornerRadius: 10, style: .continuous)
                                .stroke(.white, lineWidth: 10)
                                .background(RoundedRectangle(cornerRadius: 10, style: .continuous).fill(.primary.opacity(0.4)))
                                .frame(width: 185, height: 190)
                                .clipped()
                                .background {
                                    Image("mcwhorter")
                                        .resizable()
                                        .aspectRatio(contentMode: .fit)
                                }
                                .mask { RoundedRectangle(cornerRadius: 4, style: .continuous) }
                            Image(systemName: "stethoscope")
                                .imageScale(.large)
                                .symbolRenderingMode(.monochrome)
                                .foregroundStyle(Color(.systemGray5))
                                .offset(x: 65, y: -73)
                                .font(.system(.body, weight: .bold))
                            Text("Belmont University Clinic")
                                .font(.system(.title2, design: .rounded, weight: .bold))
                                .foregroundStyle(Color(.systemGray6))
                                .offset(x: 0, y: 55)
                        }
                    }
                    .buttonStyle(PlainButtonStyle())
                    
                    Button(action: {
                        if let url = URL(string: "https://www.belmont.edu/counseling/services.html") {
                            UIApplication.shared.open(url)
                        }
                    }) {
                        ZStack {
                            RoundedRectangle(cornerRadius: 10, style: .continuous)
                                .stroke(.white, lineWidth: 10)
                                .background(RoundedRectangle(cornerRadius: 10, style: .continuous).fill(.primary.opacity(0.37)))
                                .frame(width: 185, height: 190)
                                .clipped()
                                .background {
                                    Image("belltower")
                                        .resizable()
                                        .aspectRatio(contentMode: .fit)
                                }
                            Image(systemName: "brain.filled.head.profile")
                                .imageScale(.large)
                                .symbolRenderingMode(.monochrome)
                                .foregroundStyle(Color(.systemGray5))
                                .font(.system(.body, weight: .bold))
                                .offset(x: 70, y: -71)
                            Text("Counseling Services")
                                .font(.system(.title2, design: .rounded, weight: .bold))
                                .foregroundStyle(Color(.systemGray6))
                                .offset(x: -20, y: 55)
                        }
                    }
                    .buttonStyle(PlainButtonStyle())
                }
                .frame(width: 375)
                .clipped()
            }
            .offset(x: 0, y: -5)
            VStack {
                Text("Resources")
                    .font(.system(.title, design: .rounded, weight: .bold))
                    .foregroundStyle(Color(.displayP3, red: 50/255, green: 50/255, blue: 50/255))
                    .offset(x: -120, y: -1)
                ScrollView(.horizontal) {
                    HStack {
                        Button(action: {
                            if let url = URL(string: "https://www.belmont.edu/health-services/pharmacy.html") {
                                UIApplication.shared.open(url)
                            }
                        }) {
                            ZStack {
                                RoundedRectangle(cornerRadius: 10, style: .continuous)
                                    .stroke(.white, lineWidth: 8)
                                    .background(RoundedRectangle(cornerRadius: 10, style: .continuous).fill(.primary.opacity(0.45)))
                                    .frame(width: 170, height: 180)
                                    .clipped()
                                    .background {
                                        Image("pharmacy")
                                            .resizable()
                                            .aspectRatio(contentMode: .fit)
                                    }
                                Text("Campus Pharmacy")
                                    .foregroundStyle(Color(.systemGray6))
                                    .font(.system(.title2, design: .rounded, weight: .bold))
                                    .frame(width: 110)
                                    .clipped()
                                    .offset(x: -20, y: 45)
                            }
                        }
                        .buttonStyle(PlainButtonStyle())
                        
                        Button(action: {
                            if let url = URL(string: "https://www.belmont.edu/health-services/emergency-after-hours.html") {
                                UIApplication.shared.open(url)
                            }
                        }) {
                            ZStack {
                                RoundedRectangle(cornerRadius: 10, style: .continuous)
                                    .stroke(.white, lineWidth: 10)
                                    .background(RoundedRectangle(cornerRadius: 10, style: .continuous).fill(.primary.opacity(0.46)))
                                    .frame(width: 170, height: 180)
                                    .clipped()
                                    .background {
                                        Image("mansion")
                                            .resizable()
                                            .aspectRatio(contentMode: .fit)
                                    }
                                Text("Emergency & After Hours Information")
                                    .font(.system(.title2, design: .rounded, weight: .bold))
                                    .foregroundStyle(Color(.systemGray6))
                                    .offset(x: -5, y: 36)
                                    .frame(width: 170, height: 210)
                                    .clipped()
                            }
                        }
                        .buttonStyle(PlainButtonStyle())
                        
                        Button(action: {
                            if let url = URL(string: "https://apps.apple.com/us/app/timelycare-health-well-being/id1502432982?ign-itscg=30200&ign-itsct=apps_box_badge") {
                                UIApplication.shared.open(url)
                            }
                        }){
                            ZStack {
                                RoundedRectangle(cornerRadius: 10, style: .continuous)
                                    .stroke(.white, lineWidth: 8)
                                    .background(RoundedRectangle(cornerRadius: 10, style: .continuous).fill(.primary.opacity(0.45)))
                                    .frame(width: 170, height: 180)
                                    .clipped()
                                    .background {
                                        Image("timelycare")
                                            .resizable()
                                            .aspectRatio(contentMode: .fit)
                                    }
                                Text("TimelyCare")
                                    .font(.system(.title2, design: .rounded, weight: .bold))
                                    .foregroundStyle(Color(.systemGray6))
                                    .offset(x: -20, y: 60)
                            }
                        }
                        .buttonStyle(PlainButtonStyle())
                    }
                    .frame(maxWidth: .infinity, maxHeight: 200, alignment: .bottom)
                    .offset(x: 10, y: 0)
                }
                .offset(x: 0, y: -20)
            }
        }
    }
    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
    }
}
