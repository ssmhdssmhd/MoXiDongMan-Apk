.class public final Lfreemarker/core/p3;
.super Lfreemarker/core/b4;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lfreemarker/core/p3$do;
    }
.end annotation


# instance fields
.field private class:Lfreemarker/core/h0;


# direct methods
.method public constructor <init>(Lfreemarker/core/h0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lfreemarker/core/b4;-><init>()V

    .line 2
    iput-object p1, p0, Lfreemarker/core/p3;->class:Lfreemarker/core/h0;

    return-void
.end method


# virtual methods
.method public case()Ljava/lang/String;
    .locals 1

    const-string v0, "#return"

    return-object v0
.end method

.method public else()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public f()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public goto(I)Lfreemarker/core/f3;
    .locals 0

    if-nez p1, :cond_0

    .line 1
    sget-object p1, Lfreemarker/core/f3;->throw:Lfreemarker/core/f3;

    return-object p1

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1
.end method

.method public native(Lfreemarker/core/d0;)[Lfreemarker/core/b4;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lfreemarker/core/p3;->class:Lfreemarker/core/h0;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Lfreemarker/core/h0;->throws(Lfreemarker/core/d0;)Lfreemarker/template/TemplateModel;

    move-result-object v0

    invoke-virtual {p1, v0}, Lfreemarker/core/d0;->q3(Lfreemarker/template/TemplateModel;)V

    .line 3
    :cond_0
    invoke-virtual {p0}, Lfreemarker/core/b4;->i()Lfreemarker/core/b4;

    move-result-object p1

    if-nez p1, :cond_1

    invoke-virtual {p0}, Lfreemarker/core/b4;->synchronized()Lfreemarker/core/b4;

    move-result-object p1

    instance-of p1, p1, Lfreemarker/core/x1;

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    return-object p1

    .line 4
    :cond_1
    sget-object p1, Lfreemarker/core/p3$do;->INSTANCE:Lfreemarker/core/p3$do;

    throw p1
.end method

.method public switch(Z)Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p1, :cond_0

    const/16 v1, 0x3c

    .line 2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3
    :cond_0
    invoke-virtual {p0}, Lfreemarker/core/p3;->case()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4
    iget-object v1, p0, Lfreemarker/core/p3;->class:Lfreemarker/core/h0;

    if-eqz v1, :cond_1

    const/16 v1, 0x20

    .line 5
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 6
    iget-object v1, p0, Lfreemarker/core/p3;->class:Lfreemarker/core/h0;

    invoke-virtual {v1}, Lfreemarker/core/h4;->for()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    if-eqz p1, :cond_2

    const-string p1, "/>"

    .line 7
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public this(I)Ljava/lang/Object;
    .locals 0

    if-nez p1, :cond_0

    .line 1
    iget-object p1, p0, Lfreemarker/core/p3;->class:Lfreemarker/core/h0;

    return-object p1

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1
.end method
