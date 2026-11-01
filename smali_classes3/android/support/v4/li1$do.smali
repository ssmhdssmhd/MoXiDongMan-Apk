.class public Landroid/support/v4/li1$do;
.super Landroid/support/v4/w3;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/li1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "do"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/support/v4/w3;-><init>()V

    return-void
.end method


# virtual methods
.method public do(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;)V
    .locals 11

    const-string v0, "KeyFactory.QTESLA"

    const-string v1, "org.bouncycastle.pqc.jcajce.provider.qtesla.QTESLAKeyFactorySpi"

    invoke-interface {p1, v0, v1}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "KeyPairGenerator.QTESLA"

    const-string v1, "org.bouncycastle.pqc.jcajce.provider.qtesla.KeyPairGeneratorSpi"

    invoke-interface {p1, v0, v1}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Signature.QTESLA"

    const-string v1, "org.bouncycastle.pqc.jcajce.provider.qtesla.SignatureSpi$qTESLA"

    invoke-interface {p1, v0, v1}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lorg/bouncycastle/pqc/asn1/PQCObjectIdentifiers;->qTESLA_I:Lorg/bouncycastle/asn1/catch;

    const-string v1, "QTESLA-I"

    const-string v2, "org.bouncycastle.pqc.jcajce.provider.qtesla.SignatureSpi$HeuristicI"

    invoke-virtual {p0, p1, v1, v2, v0}, Landroid/support/v4/w3;->for(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/asn1/catch;)V

    sget-object v2, Lorg/bouncycastle/pqc/asn1/PQCObjectIdentifiers;->qTESLA_III_size:Lorg/bouncycastle/asn1/catch;

    const-string v3, "QTESLA-III-SIZE"

    const-string v4, "org.bouncycastle.pqc.jcajce.provider.qtesla.SignatureSpi$HeuristicIIISize"

    invoke-virtual {p0, p1, v3, v4, v2}, Landroid/support/v4/w3;->for(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/asn1/catch;)V

    sget-object v4, Lorg/bouncycastle/pqc/asn1/PQCObjectIdentifiers;->qTESLA_III_speed:Lorg/bouncycastle/asn1/catch;

    const-string v5, "QTESLA-III-SPEED"

    const-string v6, "org.bouncycastle.pqc.jcajce.provider.qtesla.SignatureSpi$HeuristicIIISpeed"

    invoke-virtual {p0, p1, v5, v6, v4}, Landroid/support/v4/w3;->for(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/asn1/catch;)V

    sget-object v6, Lorg/bouncycastle/pqc/asn1/PQCObjectIdentifiers;->qTESLA_p_I:Lorg/bouncycastle/asn1/catch;

    const-string v7, "QTESLA-P-I"

    const-string v8, "org.bouncycastle.pqc.jcajce.provider.qtesla.SignatureSpi$ProvablySecureI"

    invoke-virtual {p0, p1, v7, v8, v6}, Landroid/support/v4/w3;->for(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/asn1/catch;)V

    sget-object v8, Lorg/bouncycastle/pqc/asn1/PQCObjectIdentifiers;->qTESLA_p_III:Lorg/bouncycastle/asn1/catch;

    const-string v9, "QTESLA-P-III"

    const-string v10, "org.bouncycastle.pqc.jcajce.provider.qtesla.SignatureSpi$ProvablySecureIII"

    invoke-virtual {p0, p1, v9, v10, v8}, Landroid/support/v4/w3;->for(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/asn1/catch;)V

    new-instance v10, Lorg/bouncycastle/pqc/jcajce/provider/qtesla/try;

    invoke-direct {v10}, Lorg/bouncycastle/pqc/jcajce/provider/qtesla/try;-><init>()V

    invoke-virtual {p0, p1, v0, v1, v10}, Landroid/support/v4/w3;->new(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Lorg/bouncycastle/asn1/catch;Ljava/lang/String;Lorg/bouncycastle/jcajce/provider/util/AsymmetricKeyInfoConverter;)V

    invoke-virtual {p0, p1, v2, v3, v10}, Landroid/support/v4/w3;->new(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Lorg/bouncycastle/asn1/catch;Ljava/lang/String;Lorg/bouncycastle/jcajce/provider/util/AsymmetricKeyInfoConverter;)V

    invoke-virtual {p0, p1, v4, v5, v10}, Landroid/support/v4/w3;->new(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Lorg/bouncycastle/asn1/catch;Ljava/lang/String;Lorg/bouncycastle/jcajce/provider/util/AsymmetricKeyInfoConverter;)V

    invoke-virtual {p0, p1, v6, v7, v10}, Landroid/support/v4/w3;->new(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Lorg/bouncycastle/asn1/catch;Ljava/lang/String;Lorg/bouncycastle/jcajce/provider/util/AsymmetricKeyInfoConverter;)V

    invoke-virtual {p0, p1, v8, v9, v10}, Landroid/support/v4/w3;->new(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Lorg/bouncycastle/asn1/catch;Ljava/lang/String;Lorg/bouncycastle/jcajce/provider/util/AsymmetricKeyInfoConverter;)V

    return-void
.end method
