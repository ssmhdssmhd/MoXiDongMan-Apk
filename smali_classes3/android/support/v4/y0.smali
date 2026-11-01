.class public Landroid/support/v4/y0;
.super Landroid/support/v4/rk;
.source "SourceFile"


# instance fields
.field private final do:[Landroid/support/v4/rk;


# direct methods
.method public varargs constructor <init>([Landroid/support/v4/rk;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/support/v4/rk;-><init>()V

    .line 2
    invoke-static {p1}, Lorg/apache/commons/lang3/if;->protected([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Landroid/support/v4/rk;

    iput-object p1, p0, Landroid/support/v4/y0;->do:[Landroid/support/v4/rk;

    return-void
.end method


# virtual methods
.method public if(Ljava/lang/CharSequence;ILjava/io/Writer;)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroid/support/v4/y0;->do:[Landroid/support/v4/rk;

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    .line 2
    invoke-virtual {v4, p1, p2, p3}, Landroid/support/v4/rk;->if(Ljava/lang/CharSequence;ILjava/io/Writer;)I

    move-result v4

    if-eqz v4, :cond_0

    return v4

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return v2
.end method
