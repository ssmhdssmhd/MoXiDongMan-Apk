.class Lnet/lingala/zip4j/io/inputstream/break;
.super Lnet/lingala/zip4j/io/inputstream/if;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lnet/lingala/zip4j/io/inputstream/if<",
        "Lnet/lingala/zip4j/crypto/for;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lnet/lingala/zip4j/io/inputstream/goto;Landroid/support/v4/mu0;[C)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Landroid/support/v4/rj2;
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lnet/lingala/zip4j/io/inputstream/if;-><init>(Lnet/lingala/zip4j/io/inputstream/goto;Landroid/support/v4/mu0;[C)V

    return-void
.end method

.method private break()[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0xc

    new-array v0, v0, [B

    .line 1
    invoke-virtual {p0, v0}, Lnet/lingala/zip4j/io/inputstream/if;->this([B)I

    return-object v0
.end method


# virtual methods
.method public catch(Landroid/support/v4/mu0;[C)Lnet/lingala/zip4j/crypto/for;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/support/v4/rj2;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance v0, Lnet/lingala/zip4j/crypto/for;

    invoke-virtual {p1}, Landroid/support/v4/transient;->else()[B

    move-result-object p1

    invoke-direct {p0}, Lnet/lingala/zip4j/io/inputstream/break;->break()[B

    move-result-object v1

    invoke-direct {v0, p2, p1, v1}, Lnet/lingala/zip4j/crypto/for;-><init>([C[B[B)V

    return-object v0
.end method

.method public bridge synthetic goto(Landroid/support/v4/mu0;[C)Lnet/lingala/zip4j/crypto/Decrypter;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Landroid/support/v4/rj2;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Lnet/lingala/zip4j/io/inputstream/break;->catch(Landroid/support/v4/mu0;[C)Lnet/lingala/zip4j/crypto/for;

    move-result-object p1

    return-object p1
.end method
