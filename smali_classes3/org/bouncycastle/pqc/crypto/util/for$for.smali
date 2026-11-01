.class Lorg/bouncycastle/pqc/crypto/util/for$for;
.super Lorg/bouncycastle/pqc/crypto/util/for$try;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/pqc/crypto/util/for;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "for"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/bouncycastle/pqc/crypto/util/for$try;-><init>(Lorg/bouncycastle/pqc/crypto/util/for$do;)V

    return-void
.end method

.method public synthetic constructor <init>(Lorg/bouncycastle/pqc/crypto/util/for$do;)V
    .locals 0

    invoke-direct {p0}, Lorg/bouncycastle/pqc/crypto/util/for$for;-><init>()V

    return-void
.end method


# virtual methods
.method public do(Lorg/bouncycastle/asn1/x509/try;Ljava/lang/Object;)Landroid/support/v4/a4;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance p2, Landroid/support/v4/qi1;

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/x509/try;->new()Landroid/support/v4/b1;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/pqc/crypto/util/try;->for(Landroid/support/v4/b1;)I

    move-result v0

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/x509/try;->this()Lorg/bouncycastle/asn1/instanceof;

    move-result-object p1

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/if;->super()[B

    move-result-object p1

    invoke-direct {p2, v0, p1}, Landroid/support/v4/qi1;-><init>(I[B)V

    return-object p2
.end method
