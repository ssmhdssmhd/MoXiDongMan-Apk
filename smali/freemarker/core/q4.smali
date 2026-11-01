.class final Lfreemarker/core/q4;
.super Lfreemarker/core/h0;
.source "SourceFile"


# static fields
.field private static final break:I = 0x0

.field private static final catch:I = 0x1

.field private static final class:Ljava/lang/Integer;


# instance fields
.field private final goto:Lfreemarker/core/h0;

.field private final this:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const/4 v0, -0x1

    .line 1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lfreemarker/core/q4;->class:Ljava/lang/Integer;

    return-void
.end method

.method public constructor <init>(Lfreemarker/core/h0;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lfreemarker/core/h0;-><init>()V

    .line 2
    iput-object p1, p0, Lfreemarker/core/q4;->goto:Lfreemarker/core/h0;

    .line 3
    iput-boolean p2, p0, Lfreemarker/core/q4;->this:Z

    return-void
.end method


# virtual methods
.method public case()Ljava/lang/String;
    .locals 1

    .line 1
    iget-boolean v0, p0, Lfreemarker/core/q4;->this:Z

    if-eqz v0, :cond_0

    const-string v0, "-..."

    goto :goto_0

    :cond_0
    const-string v0, "+..."

    :goto_0
    return-object v0
.end method

.method public else()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public for()Ljava/lang/String;
    .locals 2

    .line 1
    iget-boolean v0, p0, Lfreemarker/core/q4;->this:Z

    if-eqz v0, :cond_0

    const-string v0, "-"

    goto :goto_0

    :cond_0
    const-string v0, "+"

    .line 2
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lfreemarker/core/q4;->goto:Lfreemarker/core/h0;

    invoke-virtual {v0}, Lfreemarker/core/h4;->for()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public goto(I)Lfreemarker/core/f3;
    .locals 1

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 1
    sget-object p1, Lfreemarker/core/f3;->while:Lfreemarker/core/f3;

    return-object p1

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1

    .line 3
    :cond_1
    sget-object p1, Lfreemarker/core/f3;->new:Lfreemarker/core/f3;

    return-object p1
.end method

.method public instanceof()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lfreemarker/core/q4;->goto:Lfreemarker/core/h0;

    invoke-virtual {v0}, Lfreemarker/core/h0;->instanceof()Z

    move-result v0

    return v0
.end method

.method public native(Lfreemarker/core/d0;)Lfreemarker/template/TemplateModel;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lfreemarker/core/q4;->goto:Lfreemarker/core/h0;

    invoke-virtual {v0, p1}, Lfreemarker/core/h0;->throws(Lfreemarker/core/d0;)Lfreemarker/template/TemplateModel;

    move-result-object v0

    .line 2
    :try_start_0
    check-cast v0, Lfreemarker/template/TemplateNumberModel;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3
    iget-boolean v1, p0, Lfreemarker/core/q4;->this:Z

    if-nez v1, :cond_0

    return-object v0

    .line 4
    :cond_0
    iget-object v1, p0, Lfreemarker/core/q4;->goto:Lfreemarker/core/h0;

    invoke-virtual {v1, v0, p1}, Lfreemarker/core/h0;->public(Lfreemarker/template/TemplateModel;Lfreemarker/core/d0;)V

    .line 5
    invoke-interface {v0}, Lfreemarker/template/TemplateNumberModel;->getAsNumber()Ljava/lang/Number;

    move-result-object p1

    .line 6
    sget-object v0, Lfreemarker/core/else;->try:Lfreemarker/core/else$if;

    sget-object v1, Lfreemarker/core/q4;->class:Ljava/lang/Integer;

    invoke-virtual {v0, v1, p1}, Lfreemarker/core/else$if;->else(Ljava/lang/Number;Ljava/lang/Number;)Ljava/lang/Number;

    move-result-object p1

    .line 7
    new-instance v0, Landroid/support/v4/az1;

    invoke-direct {v0, p1}, Landroid/support/v4/az1;-><init>(Ljava/lang/Number;)V

    return-object v0

    .line 8
    :catch_0
    new-instance v1, Lfreemarker/core/r2;

    iget-object v2, p0, Lfreemarker/core/q4;->goto:Lfreemarker/core/h0;

    invoke-direct {v1, v2, v0, p1}, Lfreemarker/core/r2;-><init>(Lfreemarker/core/h0;Lfreemarker/template/TemplateModel;Lfreemarker/core/d0;)V

    throw v1
.end method

.method public static(Ljava/lang/String;Lfreemarker/core/h0;Lfreemarker/core/h0$do;)Lfreemarker/core/h0;
    .locals 2

    .line 1
    new-instance v0, Lfreemarker/core/q4;

    iget-object v1, p0, Lfreemarker/core/q4;->goto:Lfreemarker/core/h0;

    .line 2
    invoke-virtual {v1, p1, p2, p3}, Lfreemarker/core/h0;->return(Ljava/lang/String;Lfreemarker/core/h0;Lfreemarker/core/h0$do;)Lfreemarker/core/h0;

    move-result-object p1

    iget-boolean p2, p0, Lfreemarker/core/q4;->this:Z

    invoke-direct {v0, p1, p2}, Lfreemarker/core/q4;-><init>(Lfreemarker/core/h0;Z)V

    return-object v0
.end method

.method public this(I)Ljava/lang/Object;
    .locals 1

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 1
    iget-boolean p1, p0, Lfreemarker/core/q4;->this:Z

    xor-int/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1

    .line 3
    :cond_1
    iget-object p1, p0, Lfreemarker/core/q4;->goto:Lfreemarker/core/h0;

    return-object p1
.end method
