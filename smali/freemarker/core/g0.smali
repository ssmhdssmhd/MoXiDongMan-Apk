.class Lfreemarker/core/g0;
.super Lfreemarker/core/h0;
.source "SourceFile"


# instance fields
.field public final goto:Lfreemarker/core/h0;


# direct methods
.method public constructor <init>(Lfreemarker/core/h0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lfreemarker/core/h0;-><init>()V

    .line 2
    iput-object p1, p0, Lfreemarker/core/g0;->goto:Lfreemarker/core/h0;

    return-void
.end method


# virtual methods
.method public case()Ljava/lang/String;
    .locals 1

    const-string v0, "??"

    return-object v0
.end method

.method public else()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public for()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lfreemarker/core/g0;->goto:Lfreemarker/core/h0;

    invoke-virtual {v1}, Lfreemarker/core/h4;->for()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lfreemarker/core/g0;->case()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public goto(I)Lfreemarker/core/f3;
    .locals 0

    .line 1
    sget-object p1, Lfreemarker/core/f3;->for:Lfreemarker/core/f3;

    return-object p1
.end method

.method public instanceof()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public native(Lfreemarker/core/d0;)Lfreemarker/template/TemplateModel;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lfreemarker/core/g0;->goto:Lfreemarker/core/h0;

    instance-of v1, v0, Lfreemarker/core/g3;

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 2
    invoke-virtual {p1, v0}, Lfreemarker/core/d0;->o3(Z)Z

    move-result v0

    .line 3
    :try_start_0
    iget-object v1, p0, Lfreemarker/core/g0;->goto:Lfreemarker/core/h0;

    invoke-virtual {v1, p1}, Lfreemarker/core/h0;->throws(Lfreemarker/core/d0;)Lfreemarker/template/TemplateModel;

    move-result-object v1
    :try_end_0
    .catch Lfreemarker/core/b1; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    .line 4
    invoke-virtual {p1, v0}, Lfreemarker/core/d0;->o3(Z)Z

    .line 5
    throw v1

    :catch_0
    const/4 v1, 0x0

    .line 6
    :goto_0
    invoke-virtual {p1, v0}, Lfreemarker/core/d0;->o3(Z)Z

    goto :goto_1

    .line 7
    :cond_0
    invoke-virtual {v0, p1}, Lfreemarker/core/h0;->throws(Lfreemarker/core/d0;)Lfreemarker/template/TemplateModel;

    move-result-object v1

    :goto_1
    if-nez v1, :cond_1

    .line 8
    sget-object p1, Lfreemarker/template/TemplateBooleanModel;->FALSE:Lfreemarker/template/TemplateBooleanModel;

    goto :goto_2

    :cond_1
    sget-object p1, Lfreemarker/template/TemplateBooleanModel;->TRUE:Lfreemarker/template/TemplateBooleanModel;

    :goto_2
    return-object p1
.end method

.method public static(Ljava/lang/String;Lfreemarker/core/h0;Lfreemarker/core/h0$do;)Lfreemarker/core/h0;
    .locals 2

    .line 1
    new-instance v0, Lfreemarker/core/g0;

    iget-object v1, p0, Lfreemarker/core/g0;->goto:Lfreemarker/core/h0;

    .line 2
    invoke-virtual {v1, p1, p2, p3}, Lfreemarker/core/h0;->return(Ljava/lang/String;Lfreemarker/core/h0;Lfreemarker/core/h0$do;)Lfreemarker/core/h0;

    move-result-object p1

    invoke-direct {v0, p1}, Lfreemarker/core/g0;-><init>(Lfreemarker/core/h0;)V

    return-object v0
.end method

.method public this(I)Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p1, p0, Lfreemarker/core/g0;->goto:Lfreemarker/core/h0;

    return-object p1
.end method
