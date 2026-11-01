.class Lfreemarker/core/i0;
.super Lfreemarker/core/h0;
.source "SourceFile"


# instance fields
.field private final goto:Lfreemarker/template/TemplateModel;

.field private final this:Lfreemarker/core/h0;


# direct methods
.method public constructor <init>(Lfreemarker/template/TemplateModel;Lfreemarker/core/h0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lfreemarker/core/h0;-><init>()V

    .line 2
    iput-object p1, p0, Lfreemarker/core/i0;->goto:Lfreemarker/template/TemplateModel;

    .line 3
    iput-object p2, p0, Lfreemarker/core/i0;->this:Lfreemarker/core/h0;

    return-void
.end method


# virtual methods
.method public case()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lfreemarker/core/i0;->this:Lfreemarker/core/h0;

    invoke-virtual {v0}, Lfreemarker/core/h4;->case()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public else()I
    .locals 1

    .line 1
    iget-object v0, p0, Lfreemarker/core/i0;->this:Lfreemarker/core/h0;

    invoke-virtual {v0}, Lfreemarker/core/h4;->else()I

    move-result v0

    return v0
.end method

.method public for()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lfreemarker/core/i0;->this:Lfreemarker/core/h0;

    invoke-virtual {v0}, Lfreemarker/core/h4;->for()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public goto(I)Lfreemarker/core/f3;
    .locals 1

    .line 1
    iget-object v0, p0, Lfreemarker/core/i0;->this:Lfreemarker/core/h0;

    invoke-virtual {v0, p1}, Lfreemarker/core/h4;->goto(I)Lfreemarker/core/f3;

    move-result-object p1

    return-object p1
.end method

.method public instanceof()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lfreemarker/core/i0;->this:Lfreemarker/core/h0;

    invoke-virtual {v0}, Lfreemarker/core/h0;->instanceof()Z

    move-result v0

    return v0
.end method

.method public native(Lfreemarker/core/d0;)Lfreemarker/template/TemplateModel;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateException;
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lfreemarker/core/i0;->goto:Lfreemarker/template/TemplateModel;

    return-object p1
.end method

.method public static(Ljava/lang/String;Lfreemarker/core/h0;Lfreemarker/core/h0$do;)Lfreemarker/core/h0;
    .locals 3

    .line 1
    new-instance v0, Lfreemarker/core/i0;

    iget-object v1, p0, Lfreemarker/core/i0;->goto:Lfreemarker/template/TemplateModel;

    iget-object v2, p0, Lfreemarker/core/i0;->this:Lfreemarker/core/h0;

    .line 2
    invoke-virtual {v2, p1, p2, p3}, Lfreemarker/core/h0;->return(Ljava/lang/String;Lfreemarker/core/h0;Lfreemarker/core/h0$do;)Lfreemarker/core/h0;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lfreemarker/core/i0;-><init>(Lfreemarker/template/TemplateModel;Lfreemarker/core/h0;)V

    return-object v0
.end method

.method public this(I)Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lfreemarker/core/i0;->this:Lfreemarker/core/h0;

    invoke-virtual {v0, p1}, Lfreemarker/core/h4;->this(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
