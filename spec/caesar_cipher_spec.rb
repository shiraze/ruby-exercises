require_relative '../caesar_cipher'

describe 'caesar_cipher' do
  it 'can shift by one character' do
    expect(caesar_cipher('a', 1)).to eq('b')
  end

  it 'can shift back by one character' do
    expect(caesar_cipher('b', -1)).to eq('a')
  end

  it 'can shift multiple characters' do
    expect(caesar_cipher('ab', 2)).to eq('cd')
  end

  it 'can rotate to beginning if needed' do
    expect(caesar_cipher('yz', 1)).to eq('za')
  end

  it 'can ignore non alpha characters' do
    expect(caesar_cipher('ab is great!', 26)).to eq('ab is great!')
  end

  it 'can handle upper and lower case' do
    expect(caesar_cipher('Shiraz was here!', 1)).to eq('Tijsba xbt ifsf!')
  end

  it 'can handle large shifts' do
    expect(caesar_cipher('This is a message', 26 * 2000 + 1)).to eq('Uijt jt b nfttbhf')
  end

  it 'can be used to decrypt' do
    expect(caesar_cipher(caesar_cipher('This is a message', 42), -42)).to eq('This is a message')
  end
end
