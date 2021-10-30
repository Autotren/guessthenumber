echo "Publishing all architectures..."
dotnet publish -r osx-arm64 -c release --self-contained true
dotnet publish -r osx-x64 -c release --self-contained true
dotnet publish -r linux-arm64 -c release --self-contained true
dotnet publish -r linux-x64 -c release --self-contained true
dotnet publish -r win-arm64 -c release --self-contained true
dotnet publish -r win-x64 -c release --self-contained true
 echo
 echo "Moving executables to folder..."
mv ./bin/release/net6.0/linux-arm64/publish/guessthenumber ./release/guessthenumber-linux-arm64
mv ./bin/release/net6.0/linux-x64/publish/guessthenumber ./release/guessthenumber-linux-x64
mv ./bin/release/net6.0/osx-arm64/publish/guessthenumber ./release/guessthenumber-osx-arm64
mv ./bin/release/net6.0/osx-x64/publish/guessthenumber ./release/guessthenumber-osx-x64
mv ./bin/release/net6.0/win-arm64/publish/guessthenumber.exe ./release/guessthenumber-win-arm64.exe
mv ./bin/release/net6.0/win-x64/publish/guessthenumber.exe ./release/guessthenumber-win-x64.exe
echo
echo "Removing bin folder contents..."
rm -r ./bin/*