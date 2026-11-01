.class public abstract Lcom/facebook/soloader/public;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final case:I = 0x2

.field public static final do:I = 0x0

.field public static final else:I = 0x4

.field public static final for:I = 0x2

.field public static final goto:I = 0x1

.field public static final if:I = 0x1

.field public static final new:I = 0x3

.field public static final this:I = 0x2

.field public static final try:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract case(Ljava/lang/String;)Ljava/io/File;
    .annotation runtime Landroid/support/v4/y41;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public do(Ljava/util/Collection;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public for()[Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {}, Lcom/facebook/soloader/return;->goto()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public if(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .annotation runtime Landroid/support/v4/y41;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method

.method public abstract new(Ljava/lang/String;ILandroid/os/StrictMode$ThreadPolicy;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public try(I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    return-void
.end method
