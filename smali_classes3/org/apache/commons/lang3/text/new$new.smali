.class final Lorg/apache/commons/lang3/text/new$new;
.super Lorg/apache/commons/lang3/text/new;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/lang3/text/new;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "new"
.end annotation


# instance fields
.field private final break:[C


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/apache/commons/lang3/text/new;-><init>()V

    .line 2
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object p1

    iput-object p1, p0, Lorg/apache/commons/lang3/text/new$new;->break:[C

    return-void
.end method


# virtual methods
.method public else([CIII)I
    .locals 3

    .line 1
    iget-object p3, p0, Lorg/apache/commons/lang3/text/new$new;->break:[C

    array-length p3, p3

    add-int v0, p2, p3

    const/4 v1, 0x0

    if-le v0, p4, :cond_0

    return v1

    :cond_0
    const/4 p4, 0x0

    .line 2
    :goto_0
    iget-object v0, p0, Lorg/apache/commons/lang3/text/new$new;->break:[C

    array-length v2, v0

    if-ge p4, v2, :cond_2

    .line 3
    aget-char v0, v0, p4

    aget-char v2, p1, p2

    if-eq v0, v2, :cond_1

    return v1

    :cond_1
    add-int/lit8 p4, p4, 0x1

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_2
    return p3
.end method
