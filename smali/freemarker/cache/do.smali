.class public Lfreemarker/cache/do;
.super Lfreemarker/cache/default;
.source "SourceFile"


# instance fields
.field private final do:[Lfreemarker/cache/default;


# direct methods
.method public varargs constructor <init>([Lfreemarker/cache/default;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lfreemarker/cache/default;-><init>()V

    .line 2
    array-length v0, p1

    if-eqz v0, :cond_0

    .line 3
    iput-object p1, p0, Lfreemarker/cache/do;->do:[Lfreemarker/cache/default;

    return-void

    .line 4
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Need at least 1 matcher, had 0."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public do(Ljava/lang/String;Ljava/lang/Object;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lfreemarker/cache/do;->do:[Lfreemarker/cache/default;

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    .line 2
    invoke-virtual {v4, p1, p2}, Lfreemarker/cache/default;->do(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    return v2

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    return p1
.end method
