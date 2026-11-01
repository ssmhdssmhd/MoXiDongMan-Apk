.class final Lfreemarker/core/a3;
.super Lfreemarker/core/z0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lfreemarker/core/a3$do;
    }
.end annotation


# instance fields
.field private final class:Lfreemarker/core/h0;

.field private final const:Z

.field private final final:I

.field private final super:I

.field private final throw:Lfreemarker/core/y1;

.field private volatile while:Lfreemarker/core/a3$do;


# direct methods
.method public constructor <init>(Lfreemarker/core/h0;IILfreemarker/core/y1;)V
    .locals 0

    .line 7
    invoke-direct {p0}, Lfreemarker/core/z0;-><init>()V

    .line 8
    iput-object p1, p0, Lfreemarker/core/a3;->class:Lfreemarker/core/h0;

    const/4 p1, 0x1

    .line 9
    iput-boolean p1, p0, Lfreemarker/core/a3;->const:Z

    .line 10
    iput p2, p0, Lfreemarker/core/a3;->final:I

    .line 11
    iput p3, p0, Lfreemarker/core/a3;->super:I

    .line 12
    iput-object p4, p0, Lfreemarker/core/a3;->throw:Lfreemarker/core/y1;

    return-void
.end method

.method public constructor <init>(Lfreemarker/core/h0;Lfreemarker/core/y1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lfreemarker/core/z0;-><init>()V

    .line 2
    iput-object p1, p0, Lfreemarker/core/a3;->class:Lfreemarker/core/h0;

    const/4 p1, 0x0

    .line 3
    iput-boolean p1, p0, Lfreemarker/core/a3;->const:Z

    .line 4
    iput p1, p0, Lfreemarker/core/a3;->final:I

    .line 5
    iput p1, p0, Lfreemarker/core/a3;->super:I

    .line 6
    iput-object p2, p0, Lfreemarker/core/a3;->throw:Lfreemarker/core/y1;

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public b()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public case()Ljava/lang/String;
    .locals 1

    const-string v0, "#{...}"

    return-object v0
.end method

.method public else()I
    .locals 1

    const/4 v0, 0x3

    return v0
.end method

.method public f()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public goto(I)Lfreemarker/core/f3;
    .locals 1

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 1
    sget-object p1, Lfreemarker/core/f3;->protected:Lfreemarker/core/f3;

    return-object p1

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1

    .line 3
    :cond_1
    sget-object p1, Lfreemarker/core/f3;->interface:Lfreemarker/core/f3;

    return-object p1

    .line 4
    :cond_2
    sget-object p1, Lfreemarker/core/f3;->continue:Lfreemarker/core/f3;

    return-object p1
.end method

.method public native(Lfreemarker/core/d0;)[Lfreemarker/core/b4;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lfreemarker/core/a3;->u(Lfreemarker/core/d0;)Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-virtual {p1}, Lfreemarker/core/d0;->c2()Ljava/io/Writer;

    move-result-object p1

    .line 3
    iget-object v1, p0, Lfreemarker/core/a3;->throw:Lfreemarker/core/y1;

    if-eqz v1, :cond_0

    .line 4
    invoke-virtual {v1, v0, p1}, Lfreemarker/core/y1;->super(Ljava/lang/String;Ljava/io/Writer;)V

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public bridge synthetic r(Lfreemarker/core/d0;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lfreemarker/core/a3;->u(Lfreemarker/core/d0;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public s(ZZ)Ljava/lang/String;
    .locals 1

    .line 1
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "#{"

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lfreemarker/core/a3;->class:Lfreemarker/core/h0;

    invoke-virtual {v0}, Lfreemarker/core/h4;->for()Ljava/lang/String;

    move-result-object v0

    if-eqz p2, :cond_0

    const/16 p2, 0x22

    .line 3
    invoke-static {v0, p2}, Lfreemarker/template/utility/super;->for(Ljava/lang/String;C)Ljava/lang/String;

    move-result-object v0

    :cond_0
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4
    iget-boolean p2, p0, Lfreemarker/core/a3;->const:Z

    if-eqz p2, :cond_1

    const-string p2, " ; "

    .line 5
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "m"

    .line 6
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7
    iget p2, p0, Lfreemarker/core/a3;->final:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "M"

    .line 8
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    iget p2, p0, Lfreemarker/core/a3;->super:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_1
    const-string p2, "}"

    .line 10
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public this(I)Ljava/lang/Object;
    .locals 2

    if-eqz p1, :cond_4

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 1
    iget-boolean p1, p0, Lfreemarker/core/a3;->const:Z

    if-eqz p1, :cond_0

    iget p1, p0, Lfreemarker/core/a3;->super:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    :cond_0
    return-object v1

    .line 2
    :cond_1
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1

    .line 3
    :cond_2
    iget-boolean p1, p0, Lfreemarker/core/a3;->const:Z

    if-eqz p1, :cond_3

    iget p1, p0, Lfreemarker/core/a3;->final:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    :cond_3
    return-object v1

    .line 4
    :cond_4
    iget-object p1, p0, Lfreemarker/core/a3;->class:Lfreemarker/core/h0;

    return-object p1
.end method

.method public u(Lfreemarker/core/d0;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lfreemarker/core/a3;->class:Lfreemarker/core/h0;

    invoke-virtual {v0, p1}, Lfreemarker/core/h0;->protected(Lfreemarker/core/d0;)Ljava/lang/Number;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lfreemarker/core/a3;->while:Lfreemarker/core/a3$do;

    if-eqz v1, :cond_0

    .line 3
    iget-object v2, v1, Lfreemarker/core/a3$do;->if:Ljava/util/Locale;

    invoke-virtual {p1}, Lfreemarker/core/t;->strictfp()Ljava/util/Locale;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 4
    :cond_0
    monitor-enter p0

    .line 5
    :try_start_0
    iget-object v1, p0, Lfreemarker/core/a3;->while:Lfreemarker/core/a3$do;

    if-eqz v1, :cond_1

    .line 6
    iget-object v2, v1, Lfreemarker/core/a3$do;->if:Ljava/util/Locale;

    invoke-virtual {p1}, Lfreemarker/core/t;->strictfp()Ljava/util/Locale;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 7
    :cond_1
    invoke-virtual {p1}, Lfreemarker/core/t;->strictfp()Ljava/util/Locale;

    move-result-object v1

    invoke-static {v1}, Ljava/text/NumberFormat;->getNumberInstance(Ljava/util/Locale;)Ljava/text/NumberFormat;

    move-result-object v1

    .line 8
    iget-boolean v2, p0, Lfreemarker/core/a3;->const:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    .line 9
    iget v2, p0, Lfreemarker/core/a3;->final:I

    invoke-virtual {v1, v2}, Ljava/text/NumberFormat;->setMinimumFractionDigits(I)V

    .line 10
    iget v2, p0, Lfreemarker/core/a3;->super:I

    invoke-virtual {v1, v2}, Ljava/text/NumberFormat;->setMaximumFractionDigits(I)V

    goto :goto_0

    .line 11
    :cond_2
    invoke-virtual {v1, v3}, Ljava/text/NumberFormat;->setMinimumFractionDigits(I)V

    const/16 v2, 0x32

    .line 12
    invoke-virtual {v1, v2}, Ljava/text/NumberFormat;->setMaximumFractionDigits(I)V

    .line 13
    :goto_0
    invoke-virtual {v1, v3}, Ljava/text/NumberFormat;->setGroupingUsed(Z)V

    .line 14
    new-instance v2, Lfreemarker/core/a3$do;

    invoke-virtual {p1}, Lfreemarker/core/t;->strictfp()Ljava/util/Locale;

    move-result-object p1

    invoke-direct {v2, v1, p1}, Lfreemarker/core/a3$do;-><init>(Ljava/text/NumberFormat;Ljava/util/Locale;)V

    iput-object v2, p0, Lfreemarker/core/a3;->while:Lfreemarker/core/a3$do;

    .line 15
    iget-object p1, p0, Lfreemarker/core/a3;->while:Lfreemarker/core/a3$do;

    move-object v1, p1

    .line 16
    :cond_3
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    :cond_4
    iget-object p1, v1, Lfreemarker/core/a3$do;->do:Ljava/text/NumberFormat;

    invoke-virtual {p1, v0}, Ljava/text/NumberFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :catchall_0
    move-exception p1

    .line 18
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
