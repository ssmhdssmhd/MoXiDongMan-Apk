.class public Lfreemarker/cache/class;
.super Lfreemarker/cache/default;
.source "SourceFile"


# instance fields
.field private final do:Lfreemarker/cache/default;


# direct methods
.method public constructor <init>(Lfreemarker/cache/default;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lfreemarker/cache/default;-><init>()V

    .line 2
    iput-object p1, p0, Lfreemarker/cache/class;->do:Lfreemarker/cache/default;

    return-void
.end method


# virtual methods
.method public do(Ljava/lang/String;Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lfreemarker/cache/class;->do:Lfreemarker/cache/default;

    invoke-virtual {v0, p1, p2}, Lfreemarker/cache/default;->do(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method
