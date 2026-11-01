.class public abstract Lfreemarker/core/p;
.super Lfreemarker/core/y1;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<MO:",
        "Landroid/support/v4/ep;",
        ">",
        "Lfreemarker/core/y1<",
        "TMO;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lfreemarker/core/y1;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic break(Lfreemarker/core/TemplateMarkupOutputModel;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/support/v4/k52;
        }
    .end annotation

    .line 1
    check-cast p1, Landroid/support/v4/ep;

    invoke-virtual {p0, p1}, Lfreemarker/core/p;->public(Landroid/support/v4/ep;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public catch()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public bridge synthetic class(Lfreemarker/core/TemplateMarkupOutputModel;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/support/v4/k52;
        }
    .end annotation

    .line 1
    check-cast p1, Landroid/support/v4/ep;

    invoke-virtual {p0, p1}, Lfreemarker/core/p;->return(Landroid/support/v4/ep;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic else(Ljava/lang/String;)Lfreemarker/core/TemplateMarkupOutputModel;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/support/v4/k52;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lfreemarker/core/p;->while(Ljava/lang/String;)Landroid/support/v4/ep;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic final(Lfreemarker/core/TemplateMarkupOutputModel;Ljava/io/Writer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Landroid/support/v4/k52;
        }
    .end annotation

    .line 1
    check-cast p1, Landroid/support/v4/ep;

    invoke-virtual {p0, p1, p2}, Lfreemarker/core/p;->switch(Landroid/support/v4/ep;Ljava/io/Writer;)V

    return-void
.end method

.method public for()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public bridge synthetic goto(Ljava/lang/String;)Lfreemarker/core/TemplateMarkupOutputModel;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/support/v4/k52;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lfreemarker/core/p;->import(Ljava/lang/String;)Landroid/support/v4/ep;

    move-result-object p1

    return-object p1
.end method

.method public final import(Ljava/lang/String;)Landroid/support/v4/ep;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TMO;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/support/v4/k52;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0}, Lfreemarker/core/p;->static(Ljava/lang/String;Ljava/lang/String;)Landroid/support/v4/ep;

    move-result-object p1

    return-object p1
.end method

.method public final native(Landroid/support/v4/ep;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TMO;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/support/v4/k52;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Landroid/support/v4/ep;->do()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    .line 2
    :cond_0
    invoke-virtual {p1}, Landroid/support/v4/ep;->for()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lfreemarker/core/y1;->case(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3
    invoke-virtual {p1, v0}, Landroid/support/v4/ep;->new(Ljava/lang/String;)V

    return-object v0
.end method

.method public final public(Landroid/support/v4/ep;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TMO;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/support/v4/k52;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Landroid/support/v4/ep;->for()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public return(Landroid/support/v4/ep;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TMO;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/support/v4/k52;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Landroid/support/v4/ep;->for()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1

    .line 3
    :cond_1
    invoke-virtual {p1}, Landroid/support/v4/ep;->do()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-nez p1, :cond_2

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_1
    return v1
.end method

.method public abstract static(Ljava/lang/String;Ljava/lang/String;)Landroid/support/v4/ep;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")TMO;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/support/v4/k52;
        }
    .end annotation
.end method

.method public abstract super(Ljava/lang/String;Ljava/io/Writer;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Landroid/support/v4/k52;
        }
    .end annotation
.end method

.method public final switch(Landroid/support/v4/ep;Ljava/io/Writer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TMO;",
            "Ljava/io/Writer;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Landroid/support/v4/k52;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Landroid/support/v4/ep;->do()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p2, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p1}, Landroid/support/v4/ep;->for()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lfreemarker/core/p;->super(Ljava/lang/String;Ljava/io/Writer;)V

    :goto_0
    return-void
.end method

.method public bridge synthetic this(Lfreemarker/core/TemplateMarkupOutputModel;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/support/v4/k52;
        }
    .end annotation

    .line 1
    check-cast p1, Landroid/support/v4/ep;

    invoke-virtual {p0, p1}, Lfreemarker/core/p;->native(Landroid/support/v4/ep;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final throw(Landroid/support/v4/ep;Landroid/support/v4/ep;)Landroid/support/v4/ep;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TMO;TMO;)TMO;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/support/v4/k52;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Landroid/support/v4/ep;->for()Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-virtual {p1}, Landroid/support/v4/ep;->do()Ljava/lang/String;

    move-result-object v1

    .line 3
    invoke-virtual {p2}, Landroid/support/v4/ep;->for()Ljava/lang/String;

    move-result-object v2

    .line 4
    invoke-virtual {p2}, Landroid/support/v4/ep;->do()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    if-eqz v0, :cond_0

    if-eqz v2, :cond_0

    .line 5
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v4

    :goto_0
    if-eqz v1, :cond_1

    if-eqz v3, :cond_1

    .line 6
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    :cond_1
    move-object v5, v4

    :goto_1
    if-nez v2, :cond_4

    if-eqz v5, :cond_2

    goto :goto_2

    :cond_2
    if-eqz v0, :cond_3

    .line 7
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Lfreemarker/core/p;->native(Landroid/support/v4/ep;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v4, p1}, Lfreemarker/core/p;->static(Ljava/lang/String;Ljava/lang/String;)Landroid/support/v4/ep;

    move-result-object p1

    return-object p1

    .line 8
    :cond_3
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Lfreemarker/core/p;->native(Landroid/support/v4/ep;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v4, p1}, Lfreemarker/core/p;->static(Ljava/lang/String;Ljava/lang/String;)Landroid/support/v4/ep;

    move-result-object p1

    return-object p1

    .line 9
    :cond_4
    :goto_2
    invoke-virtual {p0, v2, v5}, Lfreemarker/core/p;->static(Ljava/lang/String;Ljava/lang/String;)Landroid/support/v4/ep;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic try(Lfreemarker/core/TemplateMarkupOutputModel;Lfreemarker/core/TemplateMarkupOutputModel;)Lfreemarker/core/TemplateMarkupOutputModel;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/support/v4/k52;
        }
    .end annotation

    .line 1
    check-cast p1, Landroid/support/v4/ep;

    check-cast p2, Landroid/support/v4/ep;

    invoke-virtual {p0, p1, p2}, Lfreemarker/core/p;->throw(Landroid/support/v4/ep;Landroid/support/v4/ep;)Landroid/support/v4/ep;

    move-result-object p1

    return-object p1
.end method

.method public final while(Ljava/lang/String;)Landroid/support/v4/ep;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TMO;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/support/v4/k52;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0, p1}, Lfreemarker/core/p;->static(Ljava/lang/String;Ljava/lang/String;)Landroid/support/v4/ep;

    move-result-object p1

    return-object p1
.end method
