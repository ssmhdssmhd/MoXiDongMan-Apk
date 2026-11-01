.class public Lfreemarker/core/w;
.super Lfreemarker/core/b4;
.source "SourceFile"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method public constructor <init>(Lfreemarker/core/b4;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lfreemarker/core/b4;-><init>()V

    .line 2
    invoke-virtual {p0, p1}, Lfreemarker/core/b4;->return(Lfreemarker/core/b4;)V

    .line 3
    invoke-virtual {p0, p1}, Lfreemarker/core/h4;->if(Lfreemarker/core/h4;)Lfreemarker/core/h4;

    return-void
.end method


# virtual methods
.method public case()Ljava/lang/String;
    .locals 1

    const-string v0, "#debug_break"

    return-object v0
.end method

.method public else()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public f()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public goto(I)Lfreemarker/core/f3;
    .locals 0

    .line 1
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1
.end method

.method public native(Lfreemarker/core/d0;)[Lfreemarker/core/b4;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lfreemarker/core/h4;->getTemplate()Lfreemarker/template/static;

    move-result-object v0

    invoke-virtual {v0}, Lfreemarker/template/static;->q1()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lfreemarker/core/b4;->default(I)Lfreemarker/core/b4;

    move-result-object v2

    invoke-virtual {v2}, Lfreemarker/core/h4;->getBeginLine()I

    move-result v2

    .line 2
    invoke-static {p1, v0, v2}, Lfreemarker/debug/impl/if;->goto(Lfreemarker/core/d0;Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    invoke-virtual {p0, v1}, Lfreemarker/core/b4;->default(I)Lfreemarker/core/b4;

    move-result-object v0

    invoke-virtual {v0, p1}, Lfreemarker/core/b4;->native(Lfreemarker/core/d0;)[Lfreemarker/core/b4;

    move-result-object p1

    return-object p1

    .line 4
    :cond_0
    new-instance v0, Landroid/support/v4/q12;

    const-string v1, "Stopped by debugger"

    invoke-direct {v0, p1, v1}, Landroid/support/v4/q12;-><init>(Lfreemarker/core/d0;Ljava/lang/String;)V

    throw v0
.end method

.method public switch(Z)Ljava/lang/String;
    .locals 2

    const-string v0, "debug break"

    if-eqz p1, :cond_1

    .line 1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<#-- "

    .line 2
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4
    invoke-virtual {p0}, Lfreemarker/core/b4;->package()I

    move-result v0

    if-nez v0, :cond_0

    const-string v0, " /-->"

    .line 5
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    const-string v0, " -->"

    .line 6
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    .line 7
    invoke-virtual {p0, v0}, Lfreemarker/core/b4;->default(I)Lfreemarker/core/b4;

    move-result-object v0

    invoke-virtual {v0}, Lfreemarker/core/b4;->for()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "<#--/ debug break -->"

    .line 8
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    :goto_0
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    return-object v0
.end method

.method public this(I)Ljava/lang/Object;
    .locals 0

    .line 1
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1
.end method
