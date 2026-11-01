.class public abstract Lfreemarker/cache/return;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final do:Ljava/lang/String;

.field private final for:Ljava/lang/Object;

.field private final if:Ljava/util/Locale;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/util/Locale;Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lfreemarker/cache/return;->do:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lfreemarker/cache/return;->if:Ljava/util/Locale;

    .line 4
    iput-object p3, p0, Lfreemarker/cache/return;->for:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public abstract case(Ljava/lang/String;Ljava/util/Locale;)Lfreemarker/cache/static;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public do()Lfreemarker/cache/static;
    .locals 1

    .line 1
    invoke-static {}, Lfreemarker/cache/static;->do()Lfreemarker/cache/static;

    move-result-object v0

    return-object v0
.end method

.method public for()Ljava/util/Locale;
    .locals 1

    .line 1
    iget-object v0, p0, Lfreemarker/cache/return;->if:Ljava/util/Locale;

    return-object v0
.end method

.method public if()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lfreemarker/cache/return;->for:Ljava/lang/Object;

    return-object v0
.end method

.method public new()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lfreemarker/cache/return;->do:Ljava/lang/String;

    return-object v0
.end method

.method public abstract try(Ljava/lang/String;)Lfreemarker/cache/static;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
