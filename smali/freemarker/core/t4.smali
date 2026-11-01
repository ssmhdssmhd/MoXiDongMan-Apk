.class final Lfreemarker/core/t4;
.super Lfreemarker/core/b4;
.source "SourceFile"


# instance fields
.field public class:Lfreemarker/core/h0;

.field public const:Lfreemarker/core/h0;


# direct methods
.method public constructor <init>(Lfreemarker/core/h0;Lfreemarker/core/h0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lfreemarker/core/b4;-><init>()V

    .line 2
    iput-object p1, p0, Lfreemarker/core/t4;->class:Lfreemarker/core/h0;

    .line 3
    iput-object p2, p0, Lfreemarker/core/t4;->const:Lfreemarker/core/h0;

    return-void
.end method


# virtual methods
.method public case()Ljava/lang/String;
    .locals 1

    const-string v0, "#visit"

    return-object v0
.end method

.method public else()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public f()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public goto(I)Lfreemarker/core/f3;
    .locals 1

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 1
    sget-object p1, Lfreemarker/core/f3;->class:Lfreemarker/core/f3;

    return-object p1

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1

    .line 3
    :cond_1
    sget-object p1, Lfreemarker/core/f3;->transient:Lfreemarker/core/f3;

    return-object p1
.end method

.method public h()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public native(Lfreemarker/core/d0;)[Lfreemarker/core/b4;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lfreemarker/template/TemplateException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lfreemarker/core/t4;->class:Lfreemarker/core/h0;

    invoke-virtual {v0, p1}, Lfreemarker/core/h0;->throws(Lfreemarker/core/d0;)Lfreemarker/template/TemplateModel;

    move-result-object v0

    .line 2
    instance-of v1, v0, Lfreemarker/template/TemplateNodeModel;

    if-eqz v1, :cond_6

    .line 3
    iget-object v1, p0, Lfreemarker/core/t4;->const:Lfreemarker/core/h0;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    move-object v1, v2

    goto :goto_0

    :cond_0
    invoke-virtual {v1, p1}, Lfreemarker/core/h0;->throws(Lfreemarker/core/d0;)Lfreemarker/template/TemplateModel;

    move-result-object v1

    .line 4
    :goto_0
    iget-object v3, p0, Lfreemarker/core/t4;->const:Lfreemarker/core/h0;

    instance-of v4, v3, Lfreemarker/core/x3;

    if-eqz v4, :cond_1

    .line 5
    check-cast v1, Lfreemarker/template/TemplateScalarModel;

    invoke-interface {v1}, Lfreemarker/template/TemplateScalarModel;->getAsString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1, v2}, Lfreemarker/core/d0;->H2(Ljava/lang/String;Ljava/lang/String;)Lfreemarker/core/d0$this;

    move-result-object v1

    goto :goto_1

    .line 6
    :cond_1
    instance-of v4, v3, Lfreemarker/core/t1;

    if-eqz v4, :cond_2

    .line 7
    check-cast v3, Lfreemarker/core/t1;

    invoke-virtual {v3, p1}, Lfreemarker/core/t1;->e(Lfreemarker/core/d0;)Lfreemarker/template/TemplateSequenceModel;

    move-result-object v1

    :cond_2
    :goto_1
    if-eqz v1, :cond_5

    .line 8
    instance-of v3, v1, Lfreemarker/core/d0$this;

    if-eqz v3, :cond_3

    .line 9
    new-instance v3, Lfreemarker/template/return;

    const/4 v4, 0x1

    invoke-direct {v3, v4}, Lfreemarker/template/return;-><init>(I)V

    .line 10
    invoke-virtual {v3, v1}, Lfreemarker/template/return;->add(Ljava/lang/Object;)V

    move-object v1, v3

    goto :goto_2

    .line 11
    :cond_3
    instance-of v3, v1, Lfreemarker/template/TemplateSequenceModel;

    if-nez v3, :cond_5

    .line 12
    iget-object v0, p0, Lfreemarker/core/t4;->const:Lfreemarker/core/h0;

    if-eqz v0, :cond_4

    .line 13
    new-instance v0, Lfreemarker/core/s2;

    iget-object v2, p0, Lfreemarker/core/t4;->const:Lfreemarker/core/h0;

    invoke-direct {v0, v2, v1, p1}, Lfreemarker/core/s2;-><init>(Lfreemarker/core/h0;Lfreemarker/template/TemplateModel;Lfreemarker/core/d0;)V

    throw v0

    .line 14
    :cond_4
    new-instance v0, Landroid/support/v4/nl2;

    const-string v1, "Expecting a sequence of namespaces after \"using\""

    invoke-direct {v0, p1, v1}, Landroid/support/v4/nl2;-><init>(Lfreemarker/core/d0;Ljava/lang/String;)V

    throw v0

    .line 15
    :cond_5
    :goto_2
    check-cast v0, Lfreemarker/template/TemplateNodeModel;

    check-cast v1, Lfreemarker/template/TemplateSequenceModel;

    invoke-virtual {p1, v0, v1}, Lfreemarker/core/d0;->S2(Lfreemarker/template/TemplateNodeModel;Lfreemarker/template/TemplateSequenceModel;)V

    return-object v2

    .line 16
    :cond_6
    new-instance v1, Lfreemarker/core/q2;

    iget-object v2, p0, Lfreemarker/core/t4;->class:Lfreemarker/core/h0;

    invoke-direct {v1, v2, v0, p1}, Lfreemarker/core/q2;-><init>(Lfreemarker/core/h0;Lfreemarker/template/TemplateModel;Lfreemarker/core/d0;)V

    throw v1
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
    invoke-virtual {p0}, Lfreemarker/core/t4;->case()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    .line 4
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 5
    iget-object v1, p0, Lfreemarker/core/t4;->class:Lfreemarker/core/h0;

    invoke-virtual {v1}, Lfreemarker/core/h4;->for()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    iget-object v1, p0, Lfreemarker/core/t4;->const:Lfreemarker/core/h0;

    if-eqz v1, :cond_1

    const-string v1, " using "

    .line 7
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8
    iget-object v1, p0, Lfreemarker/core/t4;->const:Lfreemarker/core/h0;

    invoke-virtual {v1}, Lfreemarker/core/h4;->for()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    if-eqz p1, :cond_2

    const-string p1, "/>"

    .line 9
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public this(I)Ljava/lang/Object;
    .locals 1

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 1
    iget-object p1, p0, Lfreemarker/core/t4;->const:Lfreemarker/core/h0;

    return-object p1

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1

    .line 3
    :cond_1
    iget-object p1, p0, Lfreemarker/core/t4;->class:Lfreemarker/core/h0;

    return-object p1
.end method
