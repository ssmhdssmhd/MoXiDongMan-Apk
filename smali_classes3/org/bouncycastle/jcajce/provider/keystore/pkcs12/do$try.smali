.class public Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/do$try;
.super Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/do;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/do;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "try"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    new-instance v0, Lorg/bouncycastle/jcajce/util/if;

    invoke-direct {v0}, Lorg/bouncycastle/jcajce/util/if;-><init>()V

    sget-object v1, Lorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->pbeWithSHAAnd3_KeyTripleDES_CBC:Lorg/bouncycastle/asn1/catch;

    invoke-direct {p0, v0, v1, v1}, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/do;-><init>(Lorg/bouncycastle/jcajce/util/JcaJceHelper;Lorg/bouncycastle/asn1/catch;Lorg/bouncycastle/asn1/catch;)V

    return-void
.end method
