.class final Lfreemarker/core/i3;
.super Lfreemarker/core/b4;
.source "SourceFile"


# static fields
.field public static final final:[Ljava/lang/String;


# instance fields
.field private final class:Ljava/lang/String;

.field private final const:Lfreemarker/core/h0;


# direct methods
.method public static constructor <clinit>()V
    .locals 21

    const-string v0, "booleanFormat"

    const-string v1, "boolean_format"

    const-string v2, "classicCompatible"

    const-string v3, "classic_compatible"

    const-string v4, "dateFormat"

    const-string v5, "date_format"

    const-string v6, "datetimeFormat"

    const-string v7, "datetime_format"

    const-string v8, "locale"

    const-string v9, "numberFormat"

    const-string v10, "number_format"

    const-string v11, "outputEncoding"

    const-string v12, "output_encoding"

    const-string v13, "sqlDateAndTimeTimeZone"

    const-string v14, "sql_date_and_time_time_zone"

    const-string v15, "timeFormat"

    const-string v16, "timeZone"

    const-string v17, "time_format"

    const-string v18, "time_zone"

    const-string v19, "urlEscapingCharset"

    const-string v20, "url_escaping_charset"

    .line 1
    filled-new-array/range {v0 .. v20}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lfreemarker/core/i3;->final:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lfreemarker/core/m4;Lfreemarker/core/k0;Lfreemarker/core/h0;Lfreemarker/template/do;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/core/h3;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lfreemarker/core/b4;-><init>()V

    .line 2
    iget-object v0, p1, Lfreemarker/core/m4;->image:Ljava/lang/String;

    .line 3
    sget-object v1, Lfreemarker/core/i3;->final:[Ljava/lang/String;

    invoke-static {v1, v0}, Ljava/util/Arrays;->binarySearch([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v1

    if-gez v1, :cond_6

    .line 4
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x1

    .line 5
    invoke-static {p4, v1}, Landroid/support/v4/ul2;->case(Lfreemarker/template/do;Z)Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    const/4 v2, 0x0

    .line 6
    invoke-static {p4, v2}, Landroid/support/v4/ul2;->case(Lfreemarker/template/do;Z)Ljava/util/Set;

    move-result-object p4

    invoke-interface {p4, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p4

    if-nez p4, :cond_4

    const-string p4, "Unknown setting name: "

    .line 7
    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8
    invoke-static {v0}, Lfreemarker/template/utility/super;->synchronized(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, "."

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, " The allowed setting names are: "

    .line 9
    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10
    iget p2, p2, Lfreemarker/core/k0;->super:I

    const/16 p4, 0xa

    const/16 v0, 0xb

    if-eq p2, p4, :cond_0

    goto :goto_0

    :cond_0
    const/16 p2, 0xb

    :goto_0
    const/4 p4, 0x0

    .line 11
    :goto_1
    sget-object v3, Lfreemarker/core/i3;->final:[Ljava/lang/String;

    array-length v4, v3

    if-ge p4, v4, :cond_5

    .line 12
    aget-object v4, v3, p4

    .line 13
    invoke-static {v4}, Landroid/support/v4/yk2;->for(Ljava/lang/String;)I

    move-result v4

    const/16 v5, 0xc

    if-ne p2, v5, :cond_1

    if-eq v4, v0, :cond_3

    goto :goto_2

    :cond_1
    if-eq v4, v5, :cond_3

    :goto_2
    if-eqz v1, :cond_2

    const/4 v1, 0x0

    goto :goto_3

    :cond_2
    const-string v4, ", "

    .line 14
    invoke-virtual {p3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    :goto_3
    aget-object v3, v3, p4

    invoke-virtual {p3, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    add-int/lit8 p4, p4, 0x1

    goto :goto_1

    :cond_4
    const-string p2, "The setting name is recognized, but changing this setting from inside a template isn\'t supported."

    .line 16
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    :cond_5
    new-instance p2, Lfreemarker/core/h3;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const/4 p4, 0x0

    invoke-direct {p2, p3, p4, p1}, Lfreemarker/core/h3;-><init>(Ljava/lang/String;Lfreemarker/template/static;Lfreemarker/core/m4;)V

    throw p2

    .line 18
    :cond_6
    iput-object v0, p0, Lfreemarker/core/i3;->class:Ljava/lang/String;

    .line 19
    iput-object p3, p0, Lfreemarker/core/i3;->const:Lfreemarker/core/h0;

    return-void
.end method


# virtual methods
.method public case()Ljava/lang/String;
    .locals 1

    const-string v0, "#setting"

    return-object v0
.end method

.method public else()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public f()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public goto(I)Lfreemarker/core/f3;
    .locals 1

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 1
    sget-object p1, Lfreemarker/core/f3;->case:Lfreemarker/core/f3;

    return-object p1

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1

    .line 3
    :cond_1
    sget-object p1, Lfreemarker/core/f3;->else:Lfreemarker/core/f3;

    return-object p1
.end method

.method public native(Lfreemarker/core/d0;)[Lfreemarker/core/b4;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lfreemarker/core/i3;->const:Lfreemarker/core/h0;

    invoke-virtual {v0, p1}, Lfreemarker/core/h0;->throws(Lfreemarker/core/d0;)Lfreemarker/template/TemplateModel;

    move-result-object v0

    .line 2
    instance-of v1, v0, Lfreemarker/template/TemplateScalarModel;

    if-eqz v1, :cond_0

    .line 3
    check-cast v0, Lfreemarker/template/TemplateScalarModel;

    invoke-interface {v0}, Lfreemarker/template/TemplateScalarModel;->getAsString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 4
    :cond_0
    instance-of v1, v0, Lfreemarker/template/TemplateBooleanModel;

    if-eqz v1, :cond_2

    .line 5
    check-cast v0, Lfreemarker/template/TemplateBooleanModel;

    invoke-interface {v0}, Lfreemarker/template/TemplateBooleanModel;->getAsBoolean()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "true"

    goto :goto_0

    :cond_1
    const-string v0, "false"

    goto :goto_0

    .line 6
    :cond_2
    instance-of v1, v0, Lfreemarker/template/TemplateNumberModel;

    if-eqz v1, :cond_3

    .line 7
    check-cast v0, Lfreemarker/template/TemplateNumberModel;

    invoke-interface {v0}, Lfreemarker/template/TemplateNumberModel;->getAsNumber()Ljava/lang/Number;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 8
    :cond_3
    iget-object v0, p0, Lfreemarker/core/i3;->const:Lfreemarker/core/h0;

    invoke-virtual {v0, p1}, Lfreemarker/core/h0;->private(Lfreemarker/core/d0;)Ljava/lang/String;

    move-result-object v0

    .line 9
    :goto_0
    iget-object v1, p0, Lfreemarker/core/i3;->class:Ljava/lang/String;

    invoke-virtual {p1, v1, v0}, Lfreemarker/core/t;->B0(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1
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
    invoke-virtual {p0}, Lfreemarker/core/i3;->case()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    .line 4
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 5
    iget-object v1, p0, Lfreemarker/core/i3;->class:Ljava/lang/String;

    invoke-static {v1}, Landroid/support/v4/yk2;->else(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x3d

    .line 6
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 7
    iget-object v1, p0, Lfreemarker/core/i3;->const:Lfreemarker/core/h0;

    invoke-virtual {v1}, Lfreemarker/core/h4;->for()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_1

    const-string p1, "/>"

    .line 8
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    :cond_1
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
    iget-object p1, p0, Lfreemarker/core/i3;->const:Lfreemarker/core/h0;

    return-object p1

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1

    .line 3
    :cond_1
    iget-object p1, p0, Lfreemarker/core/i3;->class:Ljava/lang/String;

    return-object p1
.end method
