.class final Lfreemarker/core/while;
.super Lfreemarker/core/h0;
.source "SourceFile"


# instance fields
.field private final goto:Z


# direct methods
.method public constructor <init>(Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lfreemarker/core/h0;-><init>()V

    .line 2
    iput-boolean p1, p0, Lfreemarker/core/while;->goto:Z

    return-void
.end method

.method public static d(Z)Lfreemarker/template/TemplateBooleanModel;
    .locals 0

    if-eqz p0, :cond_0

    .line 1
    sget-object p0, Lfreemarker/template/TemplateBooleanModel;->TRUE:Lfreemarker/template/TemplateBooleanModel;

    goto :goto_0

    :cond_0
    sget-object p0, Lfreemarker/template/TemplateBooleanModel;->FALSE:Lfreemarker/template/TemplateBooleanModel;

    :goto_0
    return-object p0
.end method


# virtual methods
.method public case()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lfreemarker/core/while;->for()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public continue(Lfreemarker/core/d0;)Z
    .locals 0

    .line 1
    iget-boolean p1, p0, Lfreemarker/core/while;->goto:Z

    return p1
.end method

.method public else()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public for()Ljava/lang/String;
    .locals 1

    .line 1
    iget-boolean v0, p0, Lfreemarker/core/while;->goto:Z

    if-eqz v0, :cond_0

    const-string v0, "true"

    goto :goto_0

    :cond_0
    const-string v0, "false"

    :goto_0
    return-object v0
.end method

.method public goto(I)Lfreemarker/core/f3;
    .locals 0

    .line 1
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1
.end method

.method public instanceof()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public native(Lfreemarker/core/d0;)Lfreemarker/template/TemplateModel;
    .locals 0

    .line 1
    iget-boolean p1, p0, Lfreemarker/core/while;->goto:Z

    if-eqz p1, :cond_0

    sget-object p1, Lfreemarker/template/TemplateBooleanModel;->TRUE:Lfreemarker/template/TemplateBooleanModel;

    goto :goto_0

    :cond_0
    sget-object p1, Lfreemarker/template/TemplateBooleanModel;->FALSE:Lfreemarker/template/TemplateBooleanModel;

    :goto_0
    return-object p1
.end method

.method public static(Ljava/lang/String;Lfreemarker/core/h0;Lfreemarker/core/h0$do;)Lfreemarker/core/h0;
    .locals 0

    .line 1
    new-instance p1, Lfreemarker/core/while;

    iget-boolean p2, p0, Lfreemarker/core/while;->goto:Z

    invoke-direct {p1, p2}, Lfreemarker/core/while;-><init>(Z)V

    return-object p1
.end method

.method public this(I)Ljava/lang/Object;
    .locals 0

    .line 1
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 1
    iget-boolean v0, p0, Lfreemarker/core/while;->goto:Z

    if-eqz v0, :cond_0

    const-string v0, "true"

    goto :goto_0

    :cond_0
    const-string v0, "false"

    :goto_0
    return-object v0
.end method
