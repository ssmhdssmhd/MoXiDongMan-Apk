.class public Lfreemarker/cache/final;
.super Lfreemarker/cache/default;
.source "SourceFile"


# instance fields
.field private final do:Ljava/lang/String;

.field private for:Z

.field private if:Ljava/util/regex/Pattern;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Lfreemarker/cache/default;-><init>()V

    const-string v0, "/"

    .line 2
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    iput-object p1, p0, Lfreemarker/cache/final;->do:Ljava/lang/String;

    .line 4
    invoke-direct {p0}, Lfreemarker/cache/final;->if()V

    return-void

    .line 5
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Absolute template paths need no inital \"/\"; remove it from: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private if()V
    .locals 2

    .line 1
    iget-object v0, p0, Lfreemarker/cache/final;->do:Ljava/lang/String;

    iget-boolean v1, p0, Lfreemarker/cache/final;->for:Z

    invoke-static {v0, v1}, Lfreemarker/template/utility/super;->abstract(Ljava/lang/String;Z)Ljava/util/regex/Pattern;

    move-result-object v0

    iput-object v0, p0, Lfreemarker/cache/final;->if:Ljava/util/regex/Pattern;

    return-void
.end method


# virtual methods
.method public do(Ljava/lang/String;Ljava/lang/Object;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object p2, p0, Lfreemarker/cache/final;->if:Ljava/util/regex/Pattern;

    invoke-virtual {p2, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/regex/Matcher;->matches()Z

    move-result p1

    return p1
.end method

.method public for(Z)Lfreemarker/cache/final;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lfreemarker/cache/final;->try(Z)V

    return-object p0
.end method

.method public new()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lfreemarker/cache/final;->for:Z

    return v0
.end method

.method public try(Z)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lfreemarker/cache/final;->for:Z

    .line 2
    iput-boolean p1, p0, Lfreemarker/cache/final;->for:Z

    if-eq v0, p1, :cond_0

    .line 3
    invoke-direct {p0}, Lfreemarker/cache/final;->if()V

    :cond_0
    return-void
.end method
