.class final Lfreemarker/core/z2;
.super Lfreemarker/core/h0;
.source "SourceFile"

# interfaces
.implements Lfreemarker/template/TemplateNumberModel;


# instance fields
.field private final goto:Ljava/lang/Number;


# direct methods
.method public constructor <init>(Ljava/lang/Number;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lfreemarker/core/h0;-><init>()V

    .line 2
    iput-object p1, p0, Lfreemarker/core/z2;->goto:Ljava/lang/Number;

    return-void
.end method


# virtual methods
.method public case()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lfreemarker/core/z2;->for()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "the number: \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lfreemarker/core/z2;->goto:Ljava/lang/Number;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public default(Lfreemarker/core/d0;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p1, p0, p0, v0}, Lfreemarker/core/d0;->p1(Lfreemarker/template/TemplateNumberModel;Lfreemarker/core/h0;Z)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public else()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public for()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lfreemarker/core/z2;->goto:Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAsNumber()Ljava/lang/Number;
    .locals 1

    .line 1
    iget-object v0, p0, Lfreemarker/core/z2;->goto:Ljava/lang/Number;

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
    .locals 1

    .line 1
    new-instance p1, Landroid/support/v4/az1;

    iget-object v0, p0, Lfreemarker/core/z2;->goto:Ljava/lang/Number;

    invoke-direct {p1, v0}, Landroid/support/v4/az1;-><init>(Ljava/lang/Number;)V

    return-object p1
.end method

.method public static(Ljava/lang/String;Lfreemarker/core/h0;Lfreemarker/core/h0$do;)Lfreemarker/core/h0;
    .locals 0

    .line 1
    new-instance p1, Lfreemarker/core/z2;

    iget-object p2, p0, Lfreemarker/core/z2;->goto:Ljava/lang/Number;

    invoke-direct {p1, p2}, Lfreemarker/core/z2;-><init>(Ljava/lang/Number;)V

    return-object p1
.end method

.method public this(I)Ljava/lang/Object;
    .locals 0

    .line 1
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1
.end method
