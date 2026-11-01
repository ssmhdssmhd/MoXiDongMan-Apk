.class final synthetic Lkotlin/io/this;
.super Landroid/support/v4/g11;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/while;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {}
    d2 = {}
    k = 0x3
    mv = {
        0x1,
        0x5,
        0x1
    }
.end annotation


# direct methods
.method public constructor <init>(Lkotlin/io/break;)V
    .locals 6

    const-class v2, Lkotlin/io/break;

    const-string v3, "decoder"

    const-string v4, "getDecoder()Ljava/nio/charset/CharsetDecoder;"

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Landroid/support/v4/g11;-><init>(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public get()Ljava/lang/Object;
    .locals 1
    .annotation build Landroid/support/v4/z41;
    .end annotation

    iget-object v0, p0, Lkotlin/jvm/internal/class;->receiver:Ljava/lang/Object;

    check-cast v0, Lkotlin/io/break;

    .line 1
    invoke-static {v0}, Lkotlin/io/break;->do(Lkotlin/io/break;)Ljava/nio/charset/CharsetDecoder;

    move-result-object v0

    return-object v0
.end method

.method public set(Ljava/lang/Object;)V
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation build Landroid/support/v4/z41;
        .end annotation
    .end param

    iget-object v0, p0, Lkotlin/jvm/internal/class;->receiver:Ljava/lang/Object;

    check-cast v0, Lkotlin/io/break;

    .line 1
    check-cast p1, Ljava/nio/charset/CharsetDecoder;

    invoke-static {v0, p1}, Lkotlin/io/break;->if(Lkotlin/io/break;Ljava/nio/charset/CharsetDecoder;)V

    return-void
.end method
