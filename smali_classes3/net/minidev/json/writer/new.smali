.class public Lnet/minidev/json/writer/new;
.super Lnet/minidev/json/writer/case;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lnet/minidev/json/writer/case<",
        "Lnet/minidev/json/writer/new;",
        ">;"
    }
.end annotation


# instance fields
.field private case:Z

.field private do:Ljava/lang/Appendable;

.field private for:Ljava/lang/Boolean;

.field private if:Lnet/minidev/json/for;

.field private new:Z

.field private try:Z


# direct methods
.method public constructor <init>(Lnet/minidev/json/writer/try;Ljava/lang/Appendable;Lnet/minidev/json/for;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, p2, p3, v0}, Lnet/minidev/json/writer/new;-><init>(Lnet/minidev/json/writer/try;Ljava/lang/Appendable;Lnet/minidev/json/for;Ljava/lang/Boolean;)V

    return-void
.end method

.method public constructor <init>(Lnet/minidev/json/writer/try;Ljava/lang/Appendable;Lnet/minidev/json/for;Ljava/lang/Boolean;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lnet/minidev/json/writer/case;-><init>(Lnet/minidev/json/writer/try;)V

    const/4 p1, 0x0

    .line 3
    iput-boolean p1, p0, Lnet/minidev/json/writer/new;->new:Z

    .line 4
    iput-boolean p1, p0, Lnet/minidev/json/writer/new;->try:Z

    .line 5
    iput-boolean p1, p0, Lnet/minidev/json/writer/new;->case:Z

    .line 6
    iput-object p2, p0, Lnet/minidev/json/writer/new;->do:Ljava/lang/Appendable;

    .line 7
    iput-object p3, p0, Lnet/minidev/json/writer/new;->if:Lnet/minidev/json/for;

    .line 8
    iput-object p4, p0, Lnet/minidev/json/writer/new;->for:Ljava/lang/Boolean;

    return-void
.end method

.method private case()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lnet/minidev/json/writer/new;->for:Ljava/lang/Boolean;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private do()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lnet/minidev/json/writer/new;->new:Z

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lnet/minidev/json/writer/new;->do:Ljava/lang/Appendable;

    const/16 v1, 0x2c

    invoke-interface {v0, v1}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lnet/minidev/json/writer/new;->new:Z

    :goto_0
    return-void
.end method

.method private else(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lnet/minidev/json/writer/new;->try(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    check-cast p1, Lnet/minidev/json/writer/new;

    iget-boolean v0, p1, Lnet/minidev/json/writer/new;->try:Z

    if-eqz v0, :cond_1

    return-void

    :cond_1
    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p1, Lnet/minidev/json/writer/new;->try:Z

    .line 4
    invoke-direct {p1}, Lnet/minidev/json/writer/new;->case()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 5
    iget-object p1, p0, Lnet/minidev/json/writer/new;->do:Ljava/lang/Appendable;

    const/16 v0, 0x7b

    invoke-interface {p1, v0}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 6
    iput-boolean v1, p0, Lnet/minidev/json/writer/new;->new:Z

    goto :goto_0

    .line 7
    :cond_2
    invoke-direct {p1}, Lnet/minidev/json/writer/new;->new()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 8
    iget-object p1, p0, Lnet/minidev/json/writer/new;->do:Ljava/lang/Appendable;

    const/16 v0, 0x5b

    invoke-interface {p1, v0}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 9
    iput-boolean v1, p0, Lnet/minidev/json/writer/new;->new:Z

    :cond_3
    :goto_0
    return-void
.end method

.method private goto(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lnet/minidev/json/writer/new;->do()V

    .line 2
    invoke-direct {p0}, Lnet/minidev/json/writer/new;->new()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lnet/minidev/json/writer/new;->if:Lnet/minidev/json/for;

    invoke-virtual {v0, p1}, Lnet/minidev/json/for;->this(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 4
    iget-object v0, p0, Lnet/minidev/json/writer/new;->do:Ljava/lang/Appendable;

    invoke-interface {v0, p1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    goto :goto_0

    .line 5
    :cond_1
    iget-object v0, p0, Lnet/minidev/json/writer/new;->do:Ljava/lang/Appendable;

    const/16 v1, 0x22

    invoke-interface {v0, v1}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 6
    iget-object v0, p0, Lnet/minidev/json/writer/new;->do:Ljava/lang/Appendable;

    iget-object v2, p0, Lnet/minidev/json/writer/new;->if:Lnet/minidev/json/for;

    invoke-static {p1, v0, v2}, Lnet/minidev/json/new;->case(Ljava/lang/String;Ljava/lang/Appendable;Lnet/minidev/json/for;)V

    .line 7
    iget-object p1, p0, Lnet/minidev/json/writer/new;->do:Ljava/lang/Appendable;

    invoke-interface {p1, v1}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 8
    :goto_0
    iget-object p1, p0, Lnet/minidev/json/writer/new;->do:Ljava/lang/Appendable;

    const/16 v0, 0x3a

    invoke-interface {p1, v0}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    return-void
.end method

.method private if(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lnet/minidev/json/writer/new;->try(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    check-cast p1, Lnet/minidev/json/writer/new;

    iget-boolean v0, p1, Lnet/minidev/json/writer/new;->case:Z

    if-eqz v0, :cond_1

    return-void

    :cond_1
    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p1, Lnet/minidev/json/writer/new;->case:Z

    .line 4
    invoke-direct {p1}, Lnet/minidev/json/writer/new;->case()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 5
    iget-object p1, p0, Lnet/minidev/json/writer/new;->do:Ljava/lang/Appendable;

    const/16 v1, 0x7d

    invoke-interface {p1, v1}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 6
    iput-boolean v0, p0, Lnet/minidev/json/writer/new;->new:Z

    goto :goto_0

    .line 7
    :cond_2
    invoke-direct {p1}, Lnet/minidev/json/writer/new;->new()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 8
    iget-object p1, p0, Lnet/minidev/json/writer/new;->do:Ljava/lang/Appendable;

    const/16 v1, 0x5d

    invoke-interface {p1, v1}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 9
    iput-boolean v0, p0, Lnet/minidev/json/writer/new;->new:Z

    :cond_3
    :goto_0
    return-void
.end method

.method private new()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lnet/minidev/json/writer/new;->for:Ljava/lang/Boolean;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private this(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lnet/minidev/json/writer/new;->if:Lnet/minidev/json/for;

    iget-object v1, p0, Lnet/minidev/json/writer/new;->do:Ljava/lang/Appendable;

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lnet/minidev/json/for;->public(Ljava/lang/Appendable;Ljava/lang/String;)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-direct {p0, p1}, Lnet/minidev/json/writer/new;->try(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    invoke-direct {p0, p1}, Lnet/minidev/json/writer/new;->if(Ljava/lang/Object;)V

    goto :goto_0

    .line 5
    :cond_1
    iget-object v0, p0, Lnet/minidev/json/writer/new;->do:Ljava/lang/Appendable;

    iget-object v1, p0, Lnet/minidev/json/writer/new;->if:Lnet/minidev/json/for;

    invoke-static {p1, v0, v1}, Lnet/minidev/json/new;->b(Ljava/lang/Object;Ljava/lang/Appendable;Lnet/minidev/json/for;)V

    :goto_0
    return-void
.end method

.method private try(Ljava/lang/Object;)Z
    .locals 0

    .line 1
    instance-of p1, p1, Lnet/minidev/json/writer/new;

    return p1
.end method


# virtual methods
.method public addValue(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lnet/minidev/json/writer/new;->do()V

    .line 2
    invoke-direct {p0, p2}, Lnet/minidev/json/writer/new;->this(Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic convert(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lnet/minidev/json/writer/new;->for(Ljava/lang/Object;)Lnet/minidev/json/writer/new;

    move-result-object p1

    return-object p1
.end method

.method public createArray()Ljava/lang/Object;
    .locals 1

    .line 1
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v0, p0, Lnet/minidev/json/writer/new;->for:Ljava/lang/Boolean;

    .line 2
    :try_start_0
    invoke-direct {p0, p0}, Lnet/minidev/json/writer/new;->else(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-object p0
.end method

.method public createObject()Ljava/lang/Object;
    .locals 1

    .line 1
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object v0, p0, Lnet/minidev/json/writer/new;->for:Ljava/lang/Boolean;

    .line 2
    :try_start_0
    invoke-direct {p0, p0}, Lnet/minidev/json/writer/new;->else(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-object p0
.end method

.method public for(Ljava/lang/Object;)Lnet/minidev/json/writer/new;
    .locals 0

    .line 1
    :try_start_0
    invoke-direct {p0, p1}, Lnet/minidev/json/writer/new;->if(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-object p0
.end method

.method public setValue(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-direct {p0, p3}, Lnet/minidev/json/writer/new;->try(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    invoke-direct {p0}, Lnet/minidev/json/writer/new;->do()V

    return-void

    .line 3
    :cond_0
    invoke-direct {p0, p2}, Lnet/minidev/json/writer/new;->goto(Ljava/lang/String;)V

    .line 4
    invoke-direct {p0, p3}, Lnet/minidev/json/writer/new;->this(Ljava/lang/Object;)V

    return-void
.end method

.method public startArray(Ljava/lang/String;)Lnet/minidev/json/writer/case;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lnet/minidev/json/writer/case<",
            "*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-direct {p0, p0}, Lnet/minidev/json/writer/new;->else(Ljava/lang/Object;)V

    .line 2
    invoke-direct {p0, p1}, Lnet/minidev/json/writer/new;->goto(Ljava/lang/String;)V

    .line 3
    new-instance p1, Lnet/minidev/json/writer/new;

    iget-object v0, p0, Lnet/minidev/json/writer/case;->base:Lnet/minidev/json/writer/try;

    iget-object v1, p0, Lnet/minidev/json/writer/new;->do:Ljava/lang/Appendable;

    iget-object v2, p0, Lnet/minidev/json/writer/new;->if:Lnet/minidev/json/for;

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-direct {p1, v0, v1, v2, v3}, Lnet/minidev/json/writer/new;-><init>(Lnet/minidev/json/writer/try;Ljava/lang/Appendable;Lnet/minidev/json/for;Ljava/lang/Boolean;)V

    .line 4
    invoke-direct {p0, p1}, Lnet/minidev/json/writer/new;->else(Ljava/lang/Object;)V

    return-object p1
.end method

.method public startObject(Ljava/lang/String;)Lnet/minidev/json/writer/case;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lnet/minidev/json/writer/case<",
            "*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-direct {p0, p0}, Lnet/minidev/json/writer/new;->else(Ljava/lang/Object;)V

    .line 2
    invoke-direct {p0, p1}, Lnet/minidev/json/writer/new;->goto(Ljava/lang/String;)V

    .line 3
    new-instance p1, Lnet/minidev/json/writer/new;

    iget-object v0, p0, Lnet/minidev/json/writer/case;->base:Lnet/minidev/json/writer/try;

    iget-object v1, p0, Lnet/minidev/json/writer/new;->do:Ljava/lang/Appendable;

    iget-object v2, p0, Lnet/minidev/json/writer/new;->if:Lnet/minidev/json/for;

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-direct {p1, v0, v1, v2, v3}, Lnet/minidev/json/writer/new;-><init>(Lnet/minidev/json/writer/try;Ljava/lang/Appendable;Lnet/minidev/json/for;Ljava/lang/Boolean;)V

    .line 4
    invoke-direct {p0, p1}, Lnet/minidev/json/writer/new;->else(Ljava/lang/Object;)V

    return-object p1
.end method
