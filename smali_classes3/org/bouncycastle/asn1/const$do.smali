.class Lorg/bouncycastle/asn1/const$do;
.super Lorg/bouncycastle/asn1/const;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/asn1/const;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "do"
.end annotation


# instance fields
.field public final synthetic for:Lorg/bouncycastle/asn1/const;

.field private if:Z


# direct methods
.method public constructor <init>(Lorg/bouncycastle/asn1/const;Ljava/io/OutputStream;)V
    .locals 0

    iput-object p1, p0, Lorg/bouncycastle/asn1/const$do;->for:Lorg/bouncycastle/asn1/const;

    invoke-direct {p0, p2}, Lorg/bouncycastle/asn1/const;-><init>(Ljava/io/OutputStream;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lorg/bouncycastle/asn1/const$do;->if:Z

    return-void
.end method


# virtual methods
.method public try(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lorg/bouncycastle/asn1/const$do;->if:Z

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    iput-boolean p1, p0, Lorg/bouncycastle/asn1/const$do;->if:Z

    goto :goto_0

    :cond_0
    invoke-super {p0, p1}, Lorg/bouncycastle/asn1/const;->try(I)V

    :goto_0
    return-void
.end method
