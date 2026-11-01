.class public Lfreemarker/cache/case;
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

    const/16 v0, 0x2f

    .line 2
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 3
    iput-object p1, p0, Lfreemarker/cache/case;->do:Ljava/lang/String;

    .line 4
    invoke-direct {p0}, Lfreemarker/cache/case;->if()V

    return-void

    .line 5
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "A file name glob can\'t contain \"/\": "

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
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "**/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lfreemarker/cache/case;->do:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-boolean v1, p0, Lfreemarker/cache/case;->for:Z

    invoke-static {v0, v1}, Lfreemarker/template/utility/super;->abstract(Ljava/lang/String;Z)Ljava/util/regex/Pattern;

    move-result-object v0

    iput-object v0, p0, Lfreemarker/cache/case;->if:Ljava/util/regex/Pattern;

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
    iget-object p2, p0, Lfreemarker/cache/case;->if:Ljava/util/regex/Pattern;

    invoke-virtual {p2, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/regex/Matcher;->matches()Z

    move-result p1

    return p1
.end method

.method public for(Z)Lfreemarker/cache/case;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lfreemarker/cache/case;->try(Z)V

    return-object p0
.end method

.method public new()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lfreemarker/cache/case;->for:Z

    return v0
.end method

.method public try(Z)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lfreemarker/cache/case;->for:Z

    .line 2
    iput-boolean p1, p0, Lfreemarker/cache/case;->for:Z

    if-eq v0, p1, :cond_0

    .line 3
    invoke-direct {p0}, Lfreemarker/cache/case;->if()V

    :cond_0
    return-void
.end method
