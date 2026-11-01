.class Lnet/lingala/zip4j/io/outputstream/case;
.super Lnet/lingala/zip4j/io/outputstream/if;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/lingala/zip4j/io/outputstream/case$do;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lnet/lingala/zip4j/io/outputstream/if<",
        "Lnet/lingala/zip4j/io/outputstream/case$do;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lnet/lingala/zip4j/io/outputstream/this;Landroid/support/v4/sk2;[C)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Landroid/support/v4/rj2;
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lnet/lingala/zip4j/io/outputstream/if;-><init>(Lnet/lingala/zip4j/io/outputstream/this;Landroid/support/v4/sk2;[C)V

    return-void
.end method


# virtual methods
.method public case(Ljava/io/OutputStream;Landroid/support/v4/sk2;[C)Lnet/lingala/zip4j/io/outputstream/case$do;
    .locals 0

    .line 1
    new-instance p1, Lnet/lingala/zip4j/io/outputstream/case$do;

    invoke-direct {p1}, Lnet/lingala/zip4j/io/outputstream/case$do;-><init>()V

    return-object p1
.end method

.method public bridge synthetic new(Ljava/io/OutputStream;Landroid/support/v4/sk2;[C)Lnet/lingala/zip4j/crypto/Encrypter;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Landroid/support/v4/rj2;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lnet/lingala/zip4j/io/outputstream/case;->case(Ljava/io/OutputStream;Landroid/support/v4/sk2;[C)Lnet/lingala/zip4j/io/outputstream/case$do;

    move-result-object p1

    return-object p1
.end method
