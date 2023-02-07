import QuartzCore 

 
import UIKit

public class NavigationBar : UINavigationBar {
    
    public var widthConstraint = NSLayoutConstraint()
    public var heightConstraint = NSLayoutConstraint()
    
    public var _width : CGFloat = 0
    public var _height : CGFloat = 0
    
    public init(
        //MARK: - View
        _width: CGFloat? = nil,
        _height: CGFloat? = nil,
        _backgroundColor : UIColor? = nil,
        _borderColor : UIColor? = nil,
        _borderWidth: CGFloat? = nil,
        _cornerRadius: CGFloat? = nil,
        _shadowColor: UIColor? = nil,
        _shadowOpacity: CGFloat? = nil,
        _shadowRadius: CGFloat? = nil,
        _alpha: CGFloat? = 1.0
    ) {
        
        super.init(frame: .zero)
    
        
        
        self.translatesAutoresizingMaskIntoConstraints = false
        
        if let theWidth = _width {
            
            self._width = theWidth
            self.widthAnchor.constraint(equalToConstant: theWidth).isActive = true
            
        }
      
        if let theHeight = _height {
            
            self._height = theHeight
            self.heightAnchor.constraint(equalToConstant: theHeight).isActive = true
            
        }
      
      
      
        
        
        if let _backgroundColor = _backgroundColor {
            self.backgroundColor = _backgroundColor
        }
        if let _borderColor = _borderColor {
            self.backgroundColor = _borderColor
        }
        if let _borderWidth = _borderWidth {
            self.layer.borderWidth = _borderWidth
        }
        if let _cornerRadius = _cornerRadius {
            self.layer.cornerRadius = _cornerRadius
        }
        if let _shadowColor = _shadowColor {
            self.layer.shadowColor = _shadowColor.cgColor
        }
        if let _shadowOpacity = _shadowOpacity {
            self.layer.shadowOpacity = Float(_shadowOpacity)
        }
        if let _shadowRadius = _shadowRadius {
            self.layer.shadowRadius = _shadowRadius
        }
        if let _alpha = _alpha {
            self.alpha = _alpha
        }
        
        
        self.tag = 100
        
    }
    
    
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}

//I sought those two black eyes everywhere. When my teacher or my brother rebuked me or were unkind, I sought help every day in the sweetness of those two black eyes. In the harbor of those two black eyes, I sought refuge. She died. I cried, and I sought in the stars, In the darkness of the night for those two black eyes, But I found them not.
//Many other black eyes shone upon my childhood. But they were not those two black eyes which I had loved. In the stillness of the forest and the darkness of the night I used to watch under the stars, Watching in the darkness, Looking for those two angelic, Unapproachable black eyes, But I found them not.
//Now that my mind is awakened, I see Those two black eyes everywhere. In the eyes of the Divine Mother I have found my own mother. In the love of the Divine Mother I have found my mother’s love.
//O Thou Mother of all conscious things, Be Thou consciously receptive to my prayers. Through Thee I know all that I know; And Thou knowest all I know, So Thou knowest my prayers. And knowing and feeling Thee constantly thus, I know Thou art I, I am Thou. My little wavelet has vanished in Thee. I know Thou alone existed; And Thou alone dost exist now and ever shall. Thou art impersonal, invisible, Unseen, formless, omnipresent, But forever I want to worship Thee As both personal and impersonal. By my devotion I beheld Thee Sometimes as Krishna, Sometimes as Christ, Personal, visible and imprisoned In the little space Hidden within the temple of my love. O Invisible, just as Thou didst freeze Thine unseen Infinitude Into the sea of cosmic finitude, So do Thou appear unto me, Visible and living— That I may serve Thee. I want to see Thee as the ocean of life With and without the ripples of finite creation. O Creator of all things, I want to worship Thee both as personal and impersonal.
//The Cosmic dream bubble broke, and I sank in the sea-heart. The little bubble of my perception sank in the Infinite. I bounded over creation’s dream waves; my bosom heaved in the sea; I breathed in the wind; I moved with the star motions; I watched the dream elements of multi-million glimmerings, multi-trillion light specks. I saw the atom rivers flow past me through the pores of the blue, and through the pores of my body, and of my life.
//I dreamt within a dream. I dreamt many dreams of life within this God-made dream. I dreamt sorrow; I dreamt joy; I dreamt health; I dreamt sickness I dreamt birth and death; I dreamt matter and spirit; I dreamt larkspurs and robins; I dreamt light and gloom; I dreamt myself and I dreamt God and Soul. I dreamt the divisions of time; I dreamt of past, present, and future. I dreamt space and dimension. I dreamt ignorance and knowledge. I dreamt good and evil. I dreamt relativity and unit.
//I dreamt long and sighed at my nightmares, when the gentle touch of the omnipresent fingers of Divine Mother love awakened me.
//The Cosmic dream bubble broke; the body bubble, the mind bubble, the soul bubble, all broke.
//My boat of dream bubble raced over the sea of boisterous change, blown by the storms of Wisdom. My boat of life was made of iron sheets of delusive experience, riveted together by nails of attachment, self-love, life-love, and matter-love.
//The Mother-sent wisdom storm grew furious. The lashings of Mother wisdom fell fiercely on the rivets of selfishness and attachment. The iron sheets of my delusion creaked and fell apart. My dream boat of ignorance was shattered piece by piece, and I plunged like a plummet into the depth of Divine Mother’s Sea-heart. My dream bubble, bubble waves of creation vanished. I sank into the heart of Oneness.
//My throat of dream life choked; my dream breath vanished. My dream life died with the Cosmic dream. Then, when I touched the deepest depth of my Divine Mother’s heart, I awoke, and my Mother said in her sweet, solacing, chanting voice, “I asked you to play with beautiful dreams; you played with charming dreams for a time, but soon I found you playing with naughty dreams. Soon I found you broken and bleeding, bruised by your dream experiences; so, my child, I called you away from the playground of naughty dreams and woke you in the Smiles of my everlasting life.”
//Mother said, “In songs and dreams of my love I sent you on earth to live and dream of me. Live, dream, and feel me in all and with all, and in my songs and dreams depart from the earth-dream. You will meet everything, and everyone in my songs and dreams, whence there is no parting.”
//Divers-colored gorgeous garlands of my devotion will encircle Thy lotus feet of omnipresent love.
//I beheld the dance of the feet of Thine activity in the twinkle of the starlets. I beheld the dance of Thy light in the bluebells and the larkspurs. Thy footsteps echoed over bounding billows of aurora lights. I beheld Thy fantastic dance of life in the halls of evolution. But, Divine Mother, the calm grace of Thy bliss-face has remained ever-veiled behind the clouds of appearances and the chimerical veils of my flickering thoughts.
//I have waited long to behold Thy face. My impatience has burned with a million tongues of flame, with the flame of my burning craving for Thee.
//I burnt the sky. I ignited the stars. I melted the binding atoms of planets. In my melting light, searching for Thee, the heavenly lamps and lights lost their balance in space and plunged headlong. The space shadows, mind shadows, ignorance shadows, all shifted before the strong burst of my life’s light.
//My powerful light consumed everything; and, as the many arms of my luminous love sought to embrace and hold Thee, the heart of my loving light was broken — for voidness laughed at me from everywhere.
//My light wept dewdrops of trickling stars, until all space was filled with the beam of my light. The crying flame called aloud for Thee, everywhere, and in its echo in Thine omnipresent Space, I heard Thy voice, saying without sound:
//“The light of thy love, which swallowed up everything in one light, is Myself! Thou hast sought thyself as Me, and hast kept Me afar from thee. Finding thyself by Myself, seek Me no more as apart from thee and as beyond the boundaries of thy heart. I am thou and thou art I!”
//The earth may be shattered to dust and thrown into cosmic space — pictures of universes may come and go on the screen of time — but I will ever be Thine, O Divine Mother, for Thou art eternally mine.
//O Mother of time, space, form, and relativity, Thou hast taken a finite form — the Kali-Divine, colossal, symbol-idol of all-sheltering nature. The invisible Spirit took Thy shape — a visible Mother Divine, in whom throbs the heart of all-protecting, mothering kindness.
//O Mother Divine! The beauty-mark of the moon is set between Thy two dark eyebrows of twilight and night. Clouds of eternity veil Thy face. Gusts of prophetic lives often have dared to blow fitfully away Thy veil of mystery, momentarily revealing Thy face hiding from our stares of ignorance.
//O Mother Divine, in the dawn of creation I beheld Thee on the track of time, roaming in the rustic attire of primitive culture, crowned with wild nature, and wearing the garland of unpolished minds and opaque, finite things.
//In the noon-day of creation, I beheld Thee, wearing a garment of sunny mentalities, scorching souls with the heat of their own material fire. Thy body of activity sweated with restlessness. All Thy children felt the strain of struggle, and implored Thee to send the cooling breeze of peace.
//In Thy noon-hour of fulfillment, Thou didst equally attend the forsaken slums of misery, the halls of festive prosperity, and the shrines of peaceful wisdom.
//In Thine attire of mid-day mentalities, Thou didst travel through the fiestas of centuries, beholding the dream of human life and death, of the evolution and dissolution of planets, of the birth and death of civilizations, of the drama of nebulae-molding worlds — the dream of new-born planets and earthquakes and partial dissolutions. Then the dark night approached, and Thou didst wear the grim, dark veil of mourning, to put creation through the terrible but purifying ordeal of destruction’s fire. The sun burst and belched fire; the cosmic earthquake broke the vase of the sky, dropping embers of stars; and all creation was a furnace of flames. Everything was fire: matter, sin, darkness, all things were cast into Thy crucible, there to become pure, luminous.
//Creation came from fire: beneath the ashes of matter, the embers of creation slept; and, rocked by Thy hands, O Mother Divine, creation awoke with its body of pure flames.
//Thine one hand of power wakes unseen creative force to take many-hued, fair, finite forms. Another hand holds the astral sword of preservation, keeping all planets swinging in the rhythm of balance. Thy third hand clutches the severed head of cosmos, representing dissolution when all creation sleeps in Thee. Thy fourth hand stills the storms of delusion, bestowing the rays of salvation upon seeking devotees.
//O Kali, Thou deep Mother of creative activity, wearing a garland of human minds; the rhythm of Thy wild dance of creation ceases only when Thy feet touch the transcendent breast of Thine Invisible Consort of Infinity — Shiva, in whom all creation has rest.
//O Mother-Progress, the dance of Thy life I hear in the tinkling bells of little laughing, harmonious lives. On the floor of my tender thoughts, Thine inspirations softly dance in tune with the music of the spheres.
//In the hall of creation, everywhere, O Kali, I hear the rhythm of Thy footsteps, dancing forcefully in the booming thunder, and softly in the song of atoms.
//The Infinite sleeps beneath the shroud of magic delusion, and then, O Goddess of Forms, Thy fantastic dances of finitude begin on His bosom. Thou hast danced nearer than the throbs of my soul, and I have heard the symphony of Thy steps on the farthest horizon of my mind. Divine Mother, Thou mayest dance everywhere: but O, I pray Thee, do Thou ever play the music of Thy magic footsteps in the sacred sanctum of my soul!
//O Goddess Kali, in Thy changing robes art woven the dreams of creation, preservation and destruction. Mother Divine, on the beauteous veil of Thy mind a million cinemas of cosmic dramas play. Thus dost Thou entertain and amuse Thy good children, and frighten Thy naughty ones.
//Mother Divine, draw aside Thy glittering veil of cosmic motion pictures and show me Thy delusion-dispersing face of mercy.
//Divine Mother, let all the slaps of our trials wring from us only the one cry for Thy love. Transmute our trial-born wails into unceasing cries for Thee.
//O Divine Mother, teach the voice of our pain to sing only Thy soothing songs of joy. Melt our pride in the furnace of Thy purifying flames, and transmute it into the pure gold of humbleness.
//Divine Mother, shatter the small hamlet of our selfishness, in which lie huddled all the urchins of ignorance, and build Thy temple of omnipresence for Thy votaries of devotion, reverence, soul-love, to find sanctuary there and to worship Thee with songs of heart-whispers.
//In the golden temple of Thy whispers, they will offer to Thee their ever-fragrant frankincense of unceasing soul-chants.
//O Divine Mother, we lay at Thy feet all the new-grown, fresh-cut flowers of our eager devotion.
//Divine Mother, place Thine omnipresence on the little altar of our united hearts.
//Divine Mother, be Thou the only love of our souls.
//Divine Mother, ignite our earthliness with the flame of infinity. With the torch of our devotion, blaze our dark indifference, our restlessness and our ignorance.
//Inflame our minds with Thy thoughts! Inflame our hearts with Thy love! Inflame our souls with Thy joy!
//Divine Mother, be Thou the only flame in our hearts, burning away all darkness within us.
//Divine Mother, be Thou the fragrance ever exuding from the vase of our hearts and permeating the nooks of devoted souls whom we love.
//In the tears of our love for Thee, wash away all our love for material possessions. In the tears of communion with Thee, wash away all sorrow forevermore.
//Divine Mother, unite our little hearts into a greater heart for Thine omnipresence to rest in, forever and forever. Teach us to behold ourselves as perfect in the mirror of Thy divinity. Let the flame of our love for Thee soar triumphantly above the little hissing flames of earthly desires.
//O Divine Mother, may the shooting star of our love for Thee race gloriously through the dark skies of forgetfulness, even as the thunders of boisterous daily activities burst within us.
//Divine Mother, temples, organizations, money, a million distractions, have come in Thy divine role to delude us. ‘Tis time that Thou dost come Thyself into the waiting Temple of our love.
//O! Be Thou the pole-star of our wandering activity in the dark night of inorance, leading us safely to our haven in Thee.
//In the hall of life, decorated with mountains, cataracts, and wild scenery, I have played long. When tired of play, each time I cried for Thee, Thou didst drop to me, through the window of my desire, new dolls of fame, friends, prosperity—to quiet me. Now, this time, Divine Mother, I will play the naughty baby. I will sob unceasingly. No more toys of earthly pleasures shall stop my cries. O Divine Mother, Thou wouldst best come soon, or I will wake all creation with my cries. All Thy sleeping children will wake and join me in a chorus of wails. Forsake the busy-ness of the housework of Thy creation! I demand attention. I demand Thee, and not playthings!
//Divine Mother, I heard Thy voice in the speaking fragrance of the rose. I heard Thy voice in the lisping whispers of my devotion. I heard Thy voice beneath the din of my noisiest thoughts. It was Thy love which spoke through the voice of friendship. I touched Thy tenderness in the softness of the lily.
//O Divine Mother, break the dawn and show Thy face of light! Break the sun and show Thy face of power! Break the night and show Thy mooned face! Break my thoughts and show Thy face of wisdom! Break my feelings and show Thy face of love! Break my pride and show Thy face of humbleness! Break my wisdom and show Thy face of perfection!
//As I called to Thee in the wilderness of my loneliness, Thou didst burst through the dawn to greet me with Thy joy. Thou didst emerge from the molten door of the sun to pour Thy power into the pores of my life. Thou didst tear away the night of my ignorance to reveal Thy silver rays of speaking silence!
//O Divine Mother, teach me to use the gift of Thy love in my heart to love the members of my family more than myself. Bless me, that I may love my neighbors more than my family. Expand me, so that I love my country more than my neighbors, and that I love my world and all human brethren more than my country, neighbors, family, and myself.
//Lastly, teach me to love Thee more than anything else, for it is Thy love with which I love everything. Without Thee I cannot love anybody or anything
//Father Divine, teach me to enter through the portals of family love, or through the love of my friends into the mansion of wider social love. Teach me, then, to pass through the doors of social love into the wider mansion of international love. Teach me to pass through the portals of international love into the endless territory of divine love, in which I may perceive all animate and inanimate objects as breathing and living by Thy love.
//Teach me to tarry not at any of the fascinating, gorgeous gates of family, social or international love. Teach me to pass through all these portals, leading to smaller territories of love, until, passing through the last gate of human love, I can enter into the endless territory of divine love, in which I shall find all living, semi-living or sleeping things as my own.
//Mother Divine, the brave may laugh while passing amidst flying bullets, though death lurk in every one. But I laugh be cause, whether I float on the surface of the present life, or sink beneath the waves of death, I rest on Thy protecting, omnipresent eternal life—I am held in Thine immortal arms.
//I may lose everything and be roaming in darkness, but O Divine Mother, see that the tiny taper of my remembrance for Thee be not extinguished by the gusts of disbelief. I loved all things, only to find that I craved Thee alone. Come! Be with me always!
//In the corner of my heart I have a mystic throne for Thee. The candles of my joys are dimly lighted in the hope of Thy coming. They will burn brighter when Thou appearest. Whether Thou comest or not, I will wait for Thee until my tears melt away all material grossness.
//To please Thee my love-perfumed tears will wash Thy feet of silence. The altar of my soul will be kept empty until Thou comest.
//I will talk not; I will ask naught of Thee. I will wait, realizing that Thou knowest the pangs of my heart while I wait for Thee.
//Will that day dawn for me, O Divine Mother, when the utterance of Thy name will cause a flood of tears that will inundate the drought of my heart and burst open the dark gates of my ignorance?
//Thou lovest, O Mother Divine, to dance the dance of destruction.
//Thou dost shatter fragile mortal flames in Thy war-dance of destruction, to show, smilingly, that our souls remain unbroken.
//With Thy mercy Thou dost scale the hardened, mud-encrusted cover of delusions coated over us.
//Since Thou lovest the dance of devastation, Mother, I have cremated all my desires, frailties, weaknesses and finiteness, forever and ever, and joined Thy dance of destruction of all evils.
//O Mother, since now nothing more is left of my finiteness for Thee to destroy, dance in me Thy Dance of infinity and of love, instead.
//O Mother Divine, teach me to love others and to serve others. Teach me to be true to my word, even as I want others to be true to me. Teach me to love others as I wish them to love me. Teach me, O Mother, to make others happy-to make others smile. Teach me, O Mother, to find my happiness in the joy of others.
//Divine Mother, I have heard Thy voice speaking in the fragrance of the rose. I touched Thy tenderness in the softness of the lily. In the whispers of my devotion. it was Thy love that answered.
//Will that day dawn on me, O Divine Mother, when the utterance of Thy name will cause a flood of tears which will inundate the drought of my heart, and burst the dark gates of my ignorance? Then, in the lake of my gathered tears will grow the lotus of luminous wisdom, and the darkness of my mind will be dispelled. O formless, all-pervading Mother Divine, come to me in the form of tangible kindness, and take me away from the shores of sadness.
//O Divine Mother, in Thy lotus feet of blue light, the bee of my mind is engrossed. It is drinking the honey of Thy motherly love. This royal bee of Thine will drink no other honey but that which is graced by Thy perfume.
//O Divine Mother, flying over all the gardens of my fancy, denying myself the honey of all pleasures, at last I found the ambrosia hidden in Thy lotus-heart.
//I have been Thy busy bee, soaring through the fields of incarnations, inhaling the breath of experiences; now I will roam no more, for Thy fragrance has quenched the perfume-thirst of my soul.

//I sought those two black eyes everywhere. When my teacher or my brother rebuked me or were unkind, I sought help every day in the sweetness of those two black eyes. In the harbor of those two black eyes, I sought refuge. She died. I cried, and I sought in the stars, In the darkness of the night for those two black eyes, But I found them not.
//Many other black eyes shone upon my childhood. But they were not those two black eyes which I had loved. In the stillness of the forest and the darkness of the night I used to watch under the stars, Watching in the darkness, Looking for those two angelic, Unapproachable black eyes, But I found them not.
//Now that my mind is awakened, I see Those two black eyes everywhere. In the eyes of the Divine Mother I have found my own mother. In the love of the Divine Mother I have found my mother’s love.
//O Thou Mother of all conscious things, Be Thou consciously receptive to my prayers. Through Thee I know all that I know; And Thou knowest all I know, So Thou knowest my prayers. And knowing and feeling Thee constantly thus, I know Thou art I, I am Thou. My little wavelet has vanished in Thee. I know Thou alone existed; And Thou alone dost exist now and ever shall. Thou art impersonal, invisible, Unseen, formless, omnipresent, But forever I want to worship Thee As both personal and impersonal. By my devotion I beheld Thee Sometimes as Krishna, Sometimes as Christ, Personal, visible and imprisoned In the little space Hidden within the temple of my love. O Invisible, just as Thou didst freeze Thine unseen Infinitude Into the sea of cosmic finitude, So do Thou appear unto me, Visible and living— That I may serve Thee. I want to see Thee as the ocean of life With and without the ripples of finite creation. O Creator of all things, I want to worship Thee both as personal and impersonal.
//The Cosmic dream bubble broke, and I sank in the sea-heart. The little bubble of my perception sank in the Infinite. I bounded over creation’s dream waves; my bosom heaved in the sea; I breathed in the wind; I moved with the star motions; I watched the dream elements of multi-million glimmerings, multi-trillion light specks. I saw the atom rivers flow past me through the pores of the blue, and through the pores of my body, and of my life.
//I dreamt within a dream. I dreamt many dreams of life within this God-made dream. I dreamt sorrow; I dreamt joy; I dreamt health; I dreamt sickness I dreamt birth and death; I dreamt matter and spirit; I dreamt larkspurs and robins; I dreamt light and gloom; I dreamt myself and I dreamt God and Soul. I dreamt the divisions of time; I dreamt of past, present, and future. I dreamt space and dimension. I dreamt ignorance and knowledge. I dreamt good and evil. I dreamt relativity and unit.
//I dreamt long and sighed at my nightmares, when the gentle touch of the omnipresent fingers of Divine Mother love awakened me.
//The Cosmic dream bubble broke; the body bubble, the mind bubble, the soul bubble, all broke.
//My boat of dream bubble raced over the sea of boisterous change, blown by the storms of Wisdom. My boat of life was made of iron sheets of delusive experience, riveted together by nails of attachment, self-love, life-love, and matter-love.
//The Mother-sent wisdom storm grew furious. The lashings of Mother wisdom fell fiercely on the rivets of selfishness and attachment. The iron sheets of my delusion creaked and fell apart. My dream boat of ignorance was shattered piece by piece, and I plunged like a plummet into the depth of Divine Mother’s Sea-heart. My dream bubble, bubble waves of creation vanished. I sank into the heart of Oneness.
//My throat of dream life choked; my dream breath vanished. My dream life died with the Cosmic dream. Then, when I touched the deepest depth of my Divine Mother’s heart, I awoke, and my Mother said in her sweet, solacing, chanting voice, “I asked you to play with beautiful dreams; you played with charming dreams for a time, but soon I found you playing with naughty dreams. Soon I found you broken and bleeding, bruised by your dream experiences; so, my child, I called you away from the playground of naughty dreams and woke you in the Smiles of my everlasting life.”
//Mother said, “In songs and dreams of my love I sent you on earth to live and dream of me. Live, dream, and feel me in all and with all, and in my songs and dreams depart from the earth-dream. You will meet everything, and everyone in my songs and dreams, whence there is no parting.”
//Divers-colored gorgeous garlands of my devotion will encircle Thy lotus feet of omnipresent love.
//I beheld the dance of the feet of Thine activity in the twinkle of the starlets. I beheld the dance of Thy light in the bluebells and the larkspurs. Thy footsteps echoed over bounding billows of aurora lights. I beheld Thy fantastic dance of life in the halls of evolution. But, Divine Mother, the calm grace of Thy bliss-face has remained ever-veiled behind the clouds of appearances and the chimerical veils of my flickering thoughts.
//I have waited long to behold Thy face. My impatience has burned with a million tongues of flame, with the flame of my burning craving for Thee.
//I burnt the sky. I ignited the stars. I melted the binding atoms of planets. In my melting light, searching for Thee, the heavenly lamps and lights lost their balance in space and plunged headlong. The space shadows, mind shadows, ignorance shadows, all shifted before the strong burst of my life’s light.
//My powerful light consumed everything; and, as the many arms of my luminous love sought to embrace and hold Thee, the heart of my loving light was broken — for voidness laughed at me from everywhere.
//My light wept dewdrops of trickling stars, until all space was filled with the beam of my light. The crying flame called aloud for Thee, everywhere, and in its echo in Thine omnipresent Space, I heard Thy voice, saying without sound:
//“The light of thy love, which swallowed up everything in one light, is Myself! Thou hast sought thyself as Me, and hast kept Me afar from thee. Finding thyself by Myself, seek Me no more as apart from thee and as beyond the boundaries of thy heart. I am thou and thou art I!”
//The earth may be shattered to dust and thrown into cosmic space — pictures of universes may come and go on the screen of time — but I will ever be Thine, O Divine Mother, for Thou art eternally mine.
//O Mother of time, space, form, and relativity, Thou hast taken a finite form — the Kali-Divine, colossal, symbol-idol of all-sheltering nature. The invisible Spirit took Thy shape — a visible Mother Divine, in whom throbs the heart of all-protecting, mothering kindness.
//O Mother Divine! The beauty-mark of the moon is set between Thy two dark eyebrows of twilight and night. Clouds of eternity veil Thy face. Gusts of prophetic lives often have dared to blow fitfully away Thy veil of mystery, momentarily revealing Thy face hiding from our stares of ignorance.
//O Mother Divine, in the dawn of creation I beheld Thee on the track of time, roaming in the rustic attire of primitive culture, crowned with wild nature, and wearing the garland of unpolished minds and opaque, finite things.
//In the noon-day of creation, I beheld Thee, wearing a garment of sunny mentalities, scorching souls with the heat of their own material fire. Thy body of activity sweated with restlessness. All Thy children felt the strain of struggle, and implored Thee to send the cooling breeze of peace.
//In Thy noon-hour of fulfillment, Thou didst equally attend the forsaken slums of misery, the halls of festive prosperity, and the shrines of peaceful wisdom.
//In Thine attire of mid-day mentalities, Thou didst travel through the fiestas of centuries, beholding the dream of human life and death, of the evolution and dissolution of planets, of the birth and death of civilizations, of the drama of nebulae-molding worlds — the dream of new-born planets and earthquakes and partial dissolutions. Then the dark night approached, and Thou didst wear the grim, dark veil of mourning, to put creation through the terrible but purifying ordeal of destruction’s fire. The sun burst and belched fire; the cosmic earthquake broke the vase of the sky, dropping embers of stars; and all creation was a furnace of flames. Everything was fire: matter, sin, darkness, all things were cast into Thy crucible, there to become pure, luminous.
//Creation came from fire: beneath the ashes of matter, the embers of creation slept; and, rocked by Thy hands, O Mother Divine, creation awoke with its body of pure flames.
//Thine one hand of power wakes unseen creative force to take many-hued, fair, finite forms. Another hand holds the astral sword of preservation, keeping all planets swinging in the rhythm of balance. Thy third hand clutches the severed head of cosmos, representing dissolution when all creation sleeps in Thee. Thy fourth hand stills the storms of delusion, bestowing the rays of salvation upon seeking devotees.
//O Kali, Thou deep Mother of creative activity, wearing a garland of human minds; the rhythm of Thy wild dance of creation ceases only when Thy feet touch the transcendent breast of Thine Invisible Consort of Infinity — Shiva, in whom all creation has rest.
//O Mother-Progress, the dance of Thy life I hear in the tinkling bells of little laughing, harmonious lives. On the floor of my tender thoughts, Thine inspirations softly dance in tune with the music of the spheres.
//In the hall of creation, everywhere, O Kali, I hear the rhythm of Thy footsteps, dancing forcefully in the booming thunder, and softly in the song of atoms.
//The Infinite sleeps beneath the shroud of magic delusion, and then, O Goddess of Forms, Thy fantastic dances of finitude begin on His bosom. Thou hast danced nearer than the throbs of my soul, and I have heard the symphony of Thy steps on the farthest horizon of my mind. Divine Mother, Thou mayest dance everywhere: but O, I pray Thee, do Thou ever play the music of Thy magic footsteps in the sacred sanctum of my soul!
//O Goddess Kali, in Thy changing robes art woven the dreams of creation, preservation and destruction. Mother Divine, on the beauteous veil of Thy mind a million cinemas of cosmic dramas play. Thus dost Thou entertain and amuse Thy good children, and frighten Thy naughty ones.
//Mother Divine, draw aside Thy glittering veil of cosmic motion pictures and show me Thy delusion-dispersing face of mercy.
//Divine Mother, let all the slaps of our trials wring from us only the one cry for Thy love. Transmute our trial-born wails into unceasing cries for Thee.
//O Divine Mother, teach the voice of our pain to sing only Thy soothing songs of joy. Melt our pride in the furnace of Thy purifying flames, and transmute it into the pure gold of humbleness.
//Divine Mother, shatter the small hamlet of our selfishness, in which lie huddled all the urchins of ignorance, and build Thy temple of omnipresence for Thy votaries of devotion, reverence, soul-love, to find sanctuary there and to worship Thee with songs of heart-whispers.
//In the golden temple of Thy whispers, they will offer to Thee their ever-fragrant frankincense of unceasing soul-chants.
//O Divine Mother, we lay at Thy feet all the new-grown, fresh-cut flowers of our eager devotion.
//Divine Mother, place Thine omnipresence on the little altar of our united hearts.
//Divine Mother, be Thou the only love of our souls.
//Divine Mother, ignite our earthliness with the flame of infinity. With the torch of our devotion, blaze our dark indifference, our restlessness and our ignorance.
//Inflame our minds with Thy thoughts! Inflame our hearts with Thy love! Inflame our souls with Thy joy!
//Divine Mother, be Thou the only flame in our hearts, burning away all darkness within us.
//Divine Mother, be Thou the fragrance ever exuding from the vase of our hearts and permeating the nooks of devoted souls whom we love.
//In the tears of our love for Thee, wash away all our love for material possessions. In the tears of communion with Thee, wash away all sorrow forevermore.
//Divine Mother, unite our little hearts into a greater heart for Thine omnipresence to rest in, forever and forever. Teach us to behold ourselves as perfect in the mirror of Thy divinity. Let the flame of our love for Thee soar triumphantly above the little hissing flames of earthly desires.
//O Divine Mother, may the shooting star of our love for Thee race gloriously through the dark skies of forgetfulness, even as the thunders of boisterous daily activities burst within us.
//Divine Mother, temples, organizations, money, a million distractions, have come in Thy divine role to delude us. ‘Tis time that Thou dost come Thyself into the waiting Temple of our love.
//O! Be Thou the pole-star of our wandering activity in the dark night of inorance, leading us safely to our haven in Thee.
//In the hall of life, decorated with mountains, cataracts, and wild scenery, I have played long. When tired of play, each time I cried for Thee, Thou didst drop to me, through the window of my desire, new dolls of fame, friends, prosperity—to quiet me. Now, this time, Divine Mother, I will play the naughty baby. I will sob unceasingly. No more toys of earthly pleasures shall stop my cries. O Divine Mother, Thou wouldst best come soon, or I will wake all creation with my cries. All Thy sleeping children will wake and join me in a chorus of wails. Forsake the busy-ness of the housework of Thy creation! I demand attention. I demand Thee, and not playthings!
//Divine Mother, I heard Thy voice in the speaking fragrance of the rose. I heard Thy voice in the lisping whispers of my devotion. I heard Thy voice beneath the din of my noisiest thoughts. It was Thy love which spoke through the voice of friendship. I touched Thy tenderness in the softness of the lily.
//O Divine Mother, break the dawn and show Thy face of light! Break the sun and show Thy face of power! Break the night and show Thy mooned face! Break my thoughts and show Thy face of wisdom! Break my feelings and show Thy face of love! Break my pride and show Thy face of humbleness! Break my wisdom and show Thy face of perfection!
//As I called to Thee in the wilderness of my loneliness, Thou didst burst through the dawn to greet me with Thy joy. Thou didst emerge from the molten door of the sun to pour Thy power into the pores of my life. Thou didst tear away the night of my ignorance to reveal Thy silver rays of speaking silence!
//O Divine Mother, teach me to use the gift of Thy love in my heart to love the members of my family more than myself. Bless me, that I may love my neighbors more than my family. Expand me, so that I love my country more than my neighbors, and that I love my world and all human brethren more than my country, neighbors, family, and myself.
//Lastly, teach me to love Thee more than anything else, for it is Thy love with which I love everything. Without Thee I cannot love anybody or anything
//Father Divine, teach me to enter through the portals of family love, or through the love of my friends into the mansion of wider social love. Teach me, then, to pass through the doors of social love into the wider mansion of international love. Teach me to pass through the portals of international love into the endless territory of divine love, in which I may perceive all animate and inanimate objects as breathing and living by Thy love.
//Teach me to tarry not at any of the fascinating, gorgeous gates of family, social or international love. Teach me to pass through all these portals, leading to smaller territories of love, until, passing through the last gate of human love, I can enter into the endless territory of divine love, in which I shall find all living, semi-living or sleeping things as my own.
//Mother Divine, the brave may laugh while passing amidst flying bullets, though death lurk in every one. But I laugh be cause, whether I float on the surface of the present life, or sink beneath the waves of death, I rest on Thy protecting, omnipresent eternal life—I am held in Thine immortal arms.
//I may lose everything and be roaming in darkness, but O Divine Mother, see that the tiny taper of my remembrance for Thee be not extinguished by the gusts of disbelief. I loved all things, only to find that I craved Thee alone. Come! Be with me always!
//In the corner of my heart I have a mystic throne for Thee. The candles of my joys are dimly lighted in the hope of Thy coming. They will burn brighter when Thou appearest. Whether Thou comest or not, I will wait for Thee until my tears melt away all material grossness.
//To please Thee my love-perfumed tears will wash Thy feet of silence. The altar of my soul will be kept empty until Thou comest.
//I will talk not; I will ask naught of Thee. I will wait, realizing that Thou knowest the pangs of my heart while I wait for Thee.
//Will that day dawn for me, O Divine Mother, when the utterance of Thy name will cause a flood of tears that will inundate the drought of my heart and burst open the dark gates of my ignorance?
//Thou lovest, O Mother Divine, to dance the dance of destruction.
//Thou dost shatter fragile mortal flames in Thy war-dance of destruction, to show, smilingly, that our souls remain unbroken.
//With Thy mercy Thou dost scale the hardened, mud-encrusted cover of delusions coated over us.
//Since Thou lovest the dance of devastation, Mother, I have cremated all my desires, frailties, weaknesses and finiteness, forever and ever, and joined Thy dance of destruction of all evils.
//O Mother, since now nothing more is left of my finiteness for Thee to destroy, dance in me Thy Dance of infinity and of love, instead.
//O Mother Divine, teach me to love others and to serve others. Teach me to be true to my word, even as I want others to be true to me. Teach me to love others as I wish them to love me. Teach me, O Mother, to make others happy-to make others smile. Teach me, O Mother, to find my happiness in the joy of others.
//Divine Mother, I have heard Thy voice speaking in the fragrance of the rose. I touched Thy tenderness in the softness of the lily. In the whispers of my devotion. it was Thy love that answered.
//Will that day dawn on me, O Divine Mother, when the utterance of Thy name will cause a flood of tears which will inundate the drought of my heart, and burst the dark gates of my ignorance? Then, in the lake of my gathered tears will grow the lotus of luminous wisdom, and the darkness of my mind will be dispelled. O formless, all-pervading Mother Divine, come to me in the form of tangible kindness, and take me away from the shores of sadness.
//O Divine Mother, in Thy lotus feet of blue light, the bee of my mind is engrossed. It is drinking the honey of Thy motherly love. This royal bee of Thine will drink no other honey but that which is graced by Thy perfume.
//O Divine Mother, flying over all the gardens of my fancy, denying myself the honey of all pleasures, at last I found the ambrosia hidden in Thy lotus-heart.
//I have been Thy busy bee, soaring through the fields of incarnations, inhaling the breath of experiences; now I will roam no more, for Thy fragrance has quenched the perfume-thirst of my soul.

//I sought those two black eyes everywhere. When my teacher or my brother rebuked me or were unkind, I sought help every day in the sweetness of those two black eyes. In the harbor of those two black eyes, I sought refuge. She died. I cried, and I sought in the stars, In the darkness of the night for those two black eyes, But I found them not.
//Many other black eyes shone upon my childhood. But they were not those two black eyes which I had loved. In the stillness of the forest and the darkness of the night I used to watch under the stars, Watching in the darkness, Looking for those two angelic, Unapproachable black eyes, But I found them not.
//Now that my mind is awakened, I see Those two black eyes everywhere. In the eyes of the Divine Mother I have found my own mother. In the love of the Divine Mother I have found my mother’s love.
//O Thou Mother of all conscious things, Be Thou consciously receptive to my prayers. Through Thee I know all that I know; And Thou knowest all I know, So Thou knowest my prayers. And knowing and feeling Thee constantly thus, I know Thou art I, I am Thou. My little wavelet has vanished in Thee. I know Thou alone existed; And Thou alone dost exist now and ever shall. Thou art impersonal, invisible, Unseen, formless, omnipresent, But forever I want to worship Thee As both personal and impersonal. By my devotion I beheld Thee Sometimes as Krishna, Sometimes as Christ, Personal, visible and imprisoned In the little space Hidden within the temple of my love. O Invisible, just as Thou didst freeze Thine unseen Infinitude Into the sea of cosmic finitude, So do Thou appear unto me, Visible and living— That I may serve Thee. I want to see Thee as the ocean of life With and without the ripples of finite creation. O Creator of all things, I want to worship Thee both as personal and impersonal.
//The Cosmic dream bubble broke, and I sank in the sea-heart. The little bubble of my perception sank in the Infinite. I bounded over creation’s dream waves; my bosom heaved in the sea; I breathed in the wind; I moved with the star motions; I watched the dream elements of multi-million glimmerings, multi-trillion light specks. I saw the atom rivers flow past me through the pores of the blue, and through the pores of my body, and of my life.
//I dreamt within a dream. I dreamt many dreams of life within this God-made dream. I dreamt sorrow; I dreamt joy; I dreamt health; I dreamt sickness I dreamt birth and death; I dreamt matter and spirit; I dreamt larkspurs and robins; I dreamt light and gloom; I dreamt myself and I dreamt God and Soul. I dreamt the divisions of time; I dreamt of past, present, and future. I dreamt space and dimension. I dreamt ignorance and knowledge. I dreamt good and evil. I dreamt relativity and unit.
//I dreamt long and sighed at my nightmares, when the gentle touch of the omnipresent fingers of Divine Mother love awakened me.
//The Cosmic dream bubble broke; the body bubble, the mind bubble, the soul bubble, all broke.
//My boat of dream bubble raced over the sea of boisterous change, blown by the storms of Wisdom. My boat of life was made of iron sheets of delusive experience, riveted together by nails of attachment, self-love, life-love, and matter-love.
//The Mother-sent wisdom storm grew furious. The lashings of Mother wisdom fell fiercely on the rivets of selfishness and attachment. The iron sheets of my delusion creaked and fell apart. My dream boat of ignorance was shattered piece by piece, and I plunged like a plummet into the depth of Divine Mother’s Sea-heart. My dream bubble, bubble waves of creation vanished. I sank into the heart of Oneness.
//My throat of dream life choked; my dream breath vanished. My dream life died with the Cosmic dream. Then, when I touched the deepest depth of my Divine Mother’s heart, I awoke, and my Mother said in her sweet, solacing, chanting voice, “I asked you to play with beautiful dreams; you played with charming dreams for a time, but soon I found you playing with naughty dreams. Soon I found you broken and bleeding, bruised by your dream experiences; so, my child, I called you away from the playground of naughty dreams and woke you in the Smiles of my everlasting life.”
//Mother said, “In songs and dreams of my love I sent you on earth to live and dream of me. Live, dream, and feel me in all and with all, and in my songs and dreams depart from the earth-dream. You will meet everything, and everyone in my songs and dreams, whence there is no parting.”
//Divers-colored gorgeous garlands of my devotion will encircle Thy lotus feet of omnipresent love.
//I beheld the dance of the feet of Thine activity in the twinkle of the starlets. I beheld the dance of Thy light in the bluebells and the larkspurs. Thy footsteps echoed over bounding billows of aurora lights. I beheld Thy fantastic dance of life in the halls of evolution. But, Divine Mother, the calm grace of Thy bliss-face has remained ever-veiled behind the clouds of appearances and the chimerical veils of my flickering thoughts.
//I have waited long to behold Thy face. My impatience has burned with a million tongues of flame, with the flame of my burning craving for Thee.
//I burnt the sky. I ignited the stars. I melted the binding atoms of planets. In my melting light, searching for Thee, the heavenly lamps and lights lost their balance in space and plunged headlong. The space shadows, mind shadows, ignorance shadows, all shifted before the strong burst of my life’s light.
//My powerful light consumed everything; and, as the many arms of my luminous love sought to embrace and hold Thee, the heart of my loving light was broken — for voidness laughed at me from everywhere.
//My light wept dewdrops of trickling stars, until all space was filled with the beam of my light. The crying flame called aloud for Thee, everywhere, and in its echo in Thine omnipresent Space, I heard Thy voice, saying without sound:
//“The light of thy love, which swallowed up everything in one light, is Myself! Thou hast sought thyself as Me, and hast kept Me afar from thee. Finding thyself by Myself, seek Me no more as apart from thee and as beyond the boundaries of thy heart. I am thou and thou art I!”
//The earth may be shattered to dust and thrown into cosmic space — pictures of universes may come and go on the screen of time — but I will ever be Thine, O Divine Mother, for Thou art eternally mine.
//O Mother of time, space, form, and relativity, Thou hast taken a finite form — the Kali-Divine, colossal, symbol-idol of all-sheltering nature. The invisible Spirit took Thy shape — a visible Mother Divine, in whom throbs the heart of all-protecting, mothering kindness.
//O Mother Divine! The beauty-mark of the moon is set between Thy two dark eyebrows of twilight and night. Clouds of eternity veil Thy face. Gusts of prophetic lives often have dared to blow fitfully away Thy veil of mystery, momentarily revealing Thy face hiding from our stares of ignorance.
//O Mother Divine, in the dawn of creation I beheld Thee on the track of time, roaming in the rustic attire of primitive culture, crowned with wild nature, and wearing the garland of unpolished minds and opaque, finite things.
//In the noon-day of creation, I beheld Thee, wearing a garment of sunny mentalities, scorching souls with the heat of their own material fire. Thy body of activity sweated with restlessness. All Thy children felt the strain of struggle, and implored Thee to send the cooling breeze of peace.
//In Thy noon-hour of fulfillment, Thou didst equally attend the forsaken slums of misery, the halls of festive prosperity, and the shrines of peaceful wisdom.
//In Thine attire of mid-day mentalities, Thou didst travel through the fiestas of centuries, beholding the dream of human life and death, of the evolution and dissolution of planets, of the birth and death of civilizations, of the drama of nebulae-molding worlds — the dream of new-born planets and earthquakes and partial dissolutions. Then the dark night approached, and Thou didst wear the grim, dark veil of mourning, to put creation through the terrible but purifying ordeal of destruction’s fire. The sun burst and belched fire; the cosmic earthquake broke the vase of the sky, dropping embers of stars; and all creation was a furnace of flames. Everything was fire: matter, sin, darkness, all things were cast into Thy crucible, there to become pure, luminous.
//Creation came from fire: beneath the ashes of matter, the embers of creation slept; and, rocked by Thy hands, O Mother Divine, creation awoke with its body of pure flames.
//Thine one hand of power wakes unseen creative force to take many-hued, fair, finite forms. Another hand holds the astral sword of preservation, keeping all planets swinging in the rhythm of balance. Thy third hand clutches the severed head of cosmos, representing dissolution when all creation sleeps in Thee. Thy fourth hand stills the storms of delusion, bestowing the rays of salvation upon seeking devotees.
//O Kali, Thou deep Mother of creative activity, wearing a garland of human minds; the rhythm of Thy wild dance of creation ceases only when Thy feet touch the transcendent breast of Thine Invisible Consort of Infinity — Shiva, in whom all creation has rest.
//O Mother-Progress, the dance of Thy life I hear in the tinkling bells of little laughing, harmonious lives. On the floor of my tender thoughts, Thine inspirations softly dance in tune with the music of the spheres.
//In the hall of creation, everywhere, O Kali, I hear the rhythm of Thy footsteps, dancing forcefully in the booming thunder, and softly in the song of atoms.
//The Infinite sleeps beneath the shroud of magic delusion, and then, O Goddess of Forms, Thy fantastic dances of finitude begin on His bosom. Thou hast danced nearer than the throbs of my soul, and I have heard the symphony of Thy steps on the farthest horizon of my mind. Divine Mother, Thou mayest dance everywhere: but O, I pray Thee, do Thou ever play the music of Thy magic footsteps in the sacred sanctum of my soul!
//O Goddess Kali, in Thy changing robes art woven the dreams of creation, preservation and destruction. Mother Divine, on the beauteous veil of Thy mind a million cinemas of cosmic dramas play. Thus dost Thou entertain and amuse Thy good children, and frighten Thy naughty ones.
//Mother Divine, draw aside Thy glittering veil of cosmic motion pictures and show me Thy delusion-dispersing face of mercy.
//Divine Mother, let all the slaps of our trials wring from us only the one cry for Thy love. Transmute our trial-born wails into unceasing cries for Thee.
//O Divine Mother, teach the voice of our pain to sing only Thy soothing songs of joy. Melt our pride in the furnace of Thy purifying flames, and transmute it into the pure gold of humbleness.
//Divine Mother, shatter the small hamlet of our selfishness, in which lie huddled all the urchins of ignorance, and build Thy temple of omnipresence for Thy votaries of devotion, reverence, soul-love, to find sanctuary there and to worship Thee with songs of heart-whispers.
//In the golden temple of Thy whispers, they will offer to Thee their ever-fragrant frankincense of unceasing soul-chants.
//O Divine Mother, we lay at Thy feet all the new-grown, fresh-cut flowers of our eager devotion.
//Divine Mother, place Thine omnipresence on the little altar of our united hearts.
//Divine Mother, be Thou the only love of our souls.
//Divine Mother, ignite our earthliness with the flame of infinity. With the torch of our devotion, blaze our dark indifference, our restlessness and our ignorance.
//Inflame our minds with Thy thoughts! Inflame our hearts with Thy love! Inflame our souls with Thy joy!
//Divine Mother, be Thou the only flame in our hearts, burning away all darkness within us.
//Divine Mother, be Thou the fragrance ever exuding from the vase of our hearts and permeating the nooks of devoted souls whom we love.
//In the tears of our love for Thee, wash away all our love for material possessions. In the tears of communion with Thee, wash away all sorrow forevermore.
//Divine Mother, unite our little hearts into a greater heart for Thine omnipresence to rest in, forever and forever. Teach us to behold ourselves as perfect in the mirror of Thy divinity. Let the flame of our love for Thee soar triumphantly above the little hissing flames of earthly desires.
//O Divine Mother, may the shooting star of our love for Thee race gloriously through the dark skies of forgetfulness, even as the thunders of boisterous daily activities burst within us.
//Divine Mother, temples, organizations, money, a million distractions, have come in Thy divine role to delude us. ‘Tis time that Thou dost come Thyself into the waiting Temple of our love.
//O! Be Thou the pole-star of our wandering activity in the dark night of inorance, leading us safely to our haven in Thee.
//In the hall of life, decorated with mountains, cataracts, and wild scenery, I have played long. When tired of play, each time I cried for Thee, Thou didst drop to me, through the window of my desire, new dolls of fame, friends, prosperity—to quiet me. Now, this time, Divine Mother, I will play the naughty baby. I will sob unceasingly. No more toys of earthly pleasures shall stop my cries. O Divine Mother, Thou wouldst best come soon, or I will wake all creation with my cries. All Thy sleeping children will wake and join me in a chorus of wails. Forsake the busy-ness of the housework of Thy creation! I demand attention. I demand Thee, and not playthings!
//Divine Mother, I heard Thy voice in the speaking fragrance of the rose. I heard Thy voice in the lisping whispers of my devotion. I heard Thy voice beneath the din of my noisiest thoughts. It was Thy love which spoke through the voice of friendship. I touched Thy tenderness in the softness of the lily.
//O Divine Mother, break the dawn and show Thy face of light! Break the sun and show Thy face of power! Break the night and show Thy mooned face! Break my thoughts and show Thy face of wisdom! Break my feelings and show Thy face of love! Break my pride and show Thy face of humbleness! Break my wisdom and show Thy face of perfection!
//As I called to Thee in the wilderness of my loneliness, Thou didst burst through the dawn to greet me with Thy joy. Thou didst emerge from the molten door of the sun to pour Thy power into the pores of my life. Thou didst tear away the night of my ignorance to reveal Thy silver rays of speaking silence!
//O Divine Mother, teach me to use the gift of Thy love in my heart to love the members of my family more than myself. Bless me, that I may love my neighbors more than my family. Expand me, so that I love my country more than my neighbors, and that I love my world and all human brethren more than my country, neighbors, family, and myself.
//Lastly, teach me to love Thee more than anything else, for it is Thy love with which I love everything. Without Thee I cannot love anybody or anything
//Father Divine, teach me to enter through the portals of family love, or through the love of my friends into the mansion of wider social love. Teach me, then, to pass through the doors of social love into the wider mansion of international love. Teach me to pass through the portals of international love into the endless territory of divine love, in which I may perceive all animate and inanimate objects as breathing and living by Thy love.
//Teach me to tarry not at any of the fascinating, gorgeous gates of family, social or international love. Teach me to pass through all these portals, leading to smaller territories of love, until, passing through the last gate of human love, I can enter into the endless territory of divine love, in which I shall find all living, semi-living or sleeping things as my own.
//Mother Divine, the brave may laugh while passing amidst flying bullets, though death lurk in every one. But I laugh be cause, whether I float on the surface of the present life, or sink beneath the waves of death, I rest on Thy protecting, omnipresent eternal life—I am held in Thine immortal arms.
//I may lose everything and be roaming in darkness, but O Divine Mother, see that the tiny taper of my remembrance for Thee be not extinguished by the gusts of disbelief. I loved all things, only to find that I craved Thee alone. Come! Be with me always!
//In the corner of my heart I have a mystic throne for Thee. The candles of my joys are dimly lighted in the hope of Thy coming. They will burn brighter when Thou appearest. Whether Thou comest or not, I will wait for Thee until my tears melt away all material grossness.
//To please Thee my love-perfumed tears will wash Thy feet of silence. The altar of my soul will be kept empty until Thou comest.
//I will talk not; I will ask naught of Thee. I will wait, realizing that Thou knowest the pangs of my heart while I wait for Thee.
//Will that day dawn for me, O Divine Mother, when the utterance of Thy name will cause a flood of tears that will inundate the drought of my heart and burst open the dark gates of my ignorance?
//Thou lovest, O Mother Divine, to dance the dance of destruction.
//Thou dost shatter fragile mortal flames in Thy war-dance of destruction, to show, smilingly, that our souls remain unbroken.
//With Thy mercy Thou dost scale the hardened, mud-encrusted cover of delusions coated over us.
//Since Thou lovest the dance of devastation, Mother, I have cremated all my desires, frailties, weaknesses and finiteness, forever and ever, and joined Thy dance of destruction of all evils.
//O Mother, since now nothing more is left of my finiteness for Thee to destroy, dance in me Thy Dance of infinity and of love, instead.
//O Mother Divine, teach me to love others and to serve others. Teach me to be true to my word, even as I want others to be true to me. Teach me to love others as I wish them to love me. Teach me, O Mother, to make others happy-to make others smile. Teach me, O Mother, to find my happiness in the joy of others.
//Divine Mother, I have heard Thy voice speaking in the fragrance of the rose. I touched Thy tenderness in the softness of the lily. In the whispers of my devotion. it was Thy love that answered.
//Will that day dawn on me, O Divine Mother, when the utterance of Thy name will cause a flood of tears which will inundate the drought of my heart, and burst the dark gates of my ignorance? Then, in the lake of my gathered tears will grow the lotus of luminous wisdom, and the darkness of my mind will be dispelled. O formless, all-pervading Mother Divine, come to me in the form of tangible kindness, and take me away from the shores of sadness.
//O Divine Mother, in Thy lotus feet of blue light, the bee of my mind is engrossed. It is drinking the honey of Thy motherly love. This royal bee of Thine will drink no other honey but that which is graced by Thy perfume.
//O Divine Mother, flying over all the gardens of my fancy, denying myself the honey of all pleasures, at last I found the ambrosia hidden in Thy lotus-heart.
//I have been Thy busy bee, soaring through the fields of incarnations, inhaling the breath of experiences; now I will roam no more, for Thy fragrance has quenched the perfume-thirst of my soul.
