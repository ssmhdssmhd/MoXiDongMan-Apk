.class final Lorg/brotli/dec/goto;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private do:I

.field public for:[I

.field public if:[I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static do(Lorg/brotli/dec/goto;Lorg/brotli/dec/do;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lorg/brotli/dec/goto;->for:[I

    array-length v0, v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 2
    iget-object v3, p0, Lorg/brotli/dec/goto;->for:[I

    aput v2, v3, v1

    .line 3
    iget v3, p0, Lorg/brotli/dec/goto;->do:I

    iget-object v4, p0, Lorg/brotli/dec/goto;->if:[I

    invoke-static {v3, v4, v2, p1}, Lorg/brotli/dec/try;->final(I[IILorg/brotli/dec/do;)V

    add-int/lit16 v2, v2, 0x438

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static if(Lorg/brotli/dec/goto;II)V
    .locals 0

    .line 1
    iput p1, p0, Lorg/brotli/dec/goto;->do:I

    mul-int/lit16 p1, p2, 0x438

    .line 2
    new-array p1, p1, [I

    iput-object p1, p0, Lorg/brotli/dec/goto;->if:[I

    .line 3
    new-array p1, p2, [I

    iput-object p1, p0, Lorg/brotli/dec/goto;->for:[I

    return-void
.end method
