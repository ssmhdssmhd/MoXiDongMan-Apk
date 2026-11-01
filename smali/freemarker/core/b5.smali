.class public Lfreemarker/core/b5;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final case:Ljava/lang/String; = "\n---end-message---"

.field public static final do:Ljava/lang/String; = "Can\'t convert the date-like value to string because it isn\'t known if it\'s a date (no time part), time or date-time value."

.field public static final for:Ljava/lang/String; = "Use ?date, ?time, or ?datetime to tell FreeMarker the exact type."

.field public static final if:Ljava/lang/String; = "Can\'t parse the string to date-like value because it isn\'t known if it\'s desired result should be a date (no time part), a time, or a date-time value."

.field public static final new:[Ljava/lang/Object;

.field public static final try:Ljava/lang/String; = "---begin-message---\n"


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "Use ?date, ?time, or ?datetime to tell FreeMarker the exact type."

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "If you need a particular format only once, use ?string(pattern), like ?string(\'dd.MM.yyyy HH:mm:ss\'), to specify which fields to display. "

    aput-object v2, v0, v1

    .line 1
    sput-object v0, Lfreemarker/core/b5;->new:[Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static abstract(Ljava/lang/String;ILjava/lang/String;Lfreemarker/template/TemplateModel;)Landroid/support/v4/k52;
    .locals 3

    .line 1
    new-instance v0, Landroid/support/v4/vl2;

    const/16 v1, 0x8

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const-string p0, "(...) expects "

    const/4 v2, 0x1

    aput-object p0, v1, v2

    new-instance p0, Landroid/support/v4/zk2;

    invoke-direct {p0, p2}, Landroid/support/v4/zk2;-><init>(Ljava/lang/Object;)V

    const/4 p2, 0x2

    aput-object p0, v1, p2

    const/4 p0, 0x3

    const-string p2, " as argument #"

    aput-object p2, v1, p0

    add-int/2addr p1, v2

    .line 2
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 p1, 0x4

    aput-object p0, v1, p1

    const/4 p0, 0x5

    const-string p1, ", but received "

    aput-object p1, v1, p0

    new-instance p0, Landroid/support/v4/zk2;

    new-instance p1, Landroid/support/v4/bl2;

    invoke-direct {p1, p3}, Landroid/support/v4/bl2;-><init>(Lfreemarker/template/TemplateModel;)V

    invoke-direct {p0, p1}, Landroid/support/v4/zk2;-><init>(Ljava/lang/Object;)V

    const/4 p1, 0x6

    aput-object p0, v1, p1

    const/4 p0, 0x7

    const-string p1, "."

    aput-object p1, v1, p0

    invoke-direct {v0, v1}, Landroid/support/v4/vl2;-><init>([Ljava/lang/Object;)V

    return-object v0
.end method

.method public static break(Lfreemarker/template/static;II)Ljava/lang/String;
    .locals 1

    const-string v0, "in"

    .line 1
    invoke-static {v0, p0, p1, p2}, Lfreemarker/core/b5;->if(Ljava/lang/String;Lfreemarker/template/static;II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static case(Ljava/lang/String;II)Ljava/lang/String;
    .locals 1

    const-string v0, "on"

    .line 1
    invoke-static {v0, p0, p1, p2}, Lfreemarker/core/b5;->for(Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static catch(Ljava/lang/String;II)Ljava/lang/String;
    .locals 1

    const-string v0, "in"

    .line 1
    invoke-static {v0, p0, p1, p2}, Lfreemarker/core/b5;->for(Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static class(II)Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "line "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-ltz p0, :cond_0

    goto :goto_0

    :cond_0
    const v1, -0x3b9aca01

    sub-int/2addr p0, v1

    :goto_0
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ", column "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static const(Ljava/lang/String;)Ljava/lang/String;
    .locals 11

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 1
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    const-string p0, ""

    return-object p0

    :cond_1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v1

    const-string v2, "an"

    const/16 v3, 0x61

    if-eq v1, v3, :cond_b

    const/16 v4, 0x65

    if-eq v1, v4, :cond_b

    const/16 v5, 0x69

    if-ne v1, v5, :cond_2

    goto :goto_2

    :cond_2
    const/16 v6, 0x68

    const-string v7, "a"

    const-string v8, "a(n)"

    if-ne v1, v6, :cond_6

    .line 3
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    const-string v0, "has"

    .line 4
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "hi"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_0

    :cond_3
    const-string v0, "ht"

    .line 5
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_4

    return-object v2

    :cond_4
    return-object v8

    :cond_5
    :goto_0
    return-object v7

    :cond_6
    const/16 v6, 0x75

    if-eq v1, v6, :cond_a

    const/16 v9, 0x6f

    if-ne v1, v9, :cond_7

    goto :goto_1

    .line 6
    :cond_7
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v8

    const/4 v10, 0x1

    if-le v8, v10, :cond_8

    invoke-virtual {p0, v10}, Ljava/lang/String;->charAt(I)C

    move-result v0

    :cond_8
    const/16 p0, 0x78

    if-ne v1, p0, :cond_9

    if-eq v0, v3, :cond_9

    if-eq v0, v4, :cond_9

    if-eq v0, v5, :cond_9

    if-eq v0, v3, :cond_9

    if-eq v0, v9, :cond_9

    if-eq v0, v6, :cond_9

    return-object v2

    :cond_9
    return-object v7

    :cond_a
    :goto_1
    return-object v8

    :cond_b
    :goto_2
    return-object v2
.end method

.method public static varargs continue(Ljava/lang/String;[Ljava/lang/Object;)Landroid/support/v4/k52;
    .locals 3

    .line 1
    new-instance v0, Landroid/support/v4/vl2;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 p0, 0x1

    const-string v2, "(...) arguments have invalid value: "

    aput-object v2, v1, p0

    const/4 p0, 0x2

    aput-object p1, v1, p0

    invoke-direct {v0, v1}, Landroid/support/v4/vl2;-><init>([Ljava/lang/Object;)V

    return-object v0
.end method

.method public static default(Ljava/lang/String;ILfreemarker/template/TemplateModel;)Landroid/support/v4/k52;
    .locals 1

    const-string v0, "number"

    .line 1
    invoke-static {p0, p1, v0, p2}, Lfreemarker/core/b5;->abstract(Ljava/lang/String;ILjava/lang/String;Lfreemarker/template/TemplateModel;)Landroid/support/v4/k52;

    move-result-object p0

    return-object p0
.end method

.method public static do(Ljava/lang/StringBuilder;Lfreemarker/core/h0;)Ljava/lang/StringBuilder;
    .locals 2

    .line 1
    instance-of v0, p1, Lfreemarker/core/z2;

    if-nez v0, :cond_0

    instance-of v0, p1, Lfreemarker/core/x3;

    if-nez v0, :cond_0

    instance-of v0, p1, Lfreemarker/core/while;

    if-nez v0, :cond_0

    instance-of v0, p1, Lfreemarker/core/t1;

    if-nez v0, :cond_0

    instance-of v0, p1, Lfreemarker/core/r0;

    if-nez v0, :cond_0

    instance-of v0, p1, Lfreemarker/core/w0;

    if-nez v0, :cond_0

    instance-of v0, p1, Lfreemarker/core/a0;

    if-nez v0, :cond_0

    instance-of v0, p1, Lfreemarker/core/b0;

    if-nez v0, :cond_0

    instance-of v0, p1, Lfreemarker/core/a2;

    if-nez v0, :cond_0

    instance-of v0, p1, Lfreemarker/core/return;

    if-nez v0, :cond_0

    instance-of v0, p1, Lfreemarker/core/g0;

    if-nez v0, :cond_0

    instance-of v0, p1, Lfreemarker/core/g3;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    const/16 v1, 0x28

    .line 2
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3
    :cond_1
    invoke-virtual {p1}, Lfreemarker/core/h4;->for()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v0, :cond_2

    const/16 p1, 0x29

    .line 4
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_2
    return-object p0
.end method

.method public static else(Lfreemarker/core/x1;II)Ljava/lang/String;
    .locals 7

    .line 1
    invoke-virtual {p0}, Lfreemarker/core/h4;->getTemplate()Lfreemarker/template/static;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lfreemarker/template/static;->q1()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    move-object v2, v0

    invoke-virtual {p0}, Lfreemarker/core/x1;->x()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lfreemarker/core/x1;->z()Z

    move-result v4

    const-string v1, "at"

    move v5, p1

    move v6, p2

    invoke-static/range {v1 .. v6}, Lfreemarker/core/b5;->new(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZII)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static extends(Ljava/lang/String;ILfreemarker/template/TemplateModel;)Landroid/support/v4/k52;
    .locals 1

    const-string v0, "sequence"

    .line 1
    invoke-static {p0, p1, v0, p2}, Lfreemarker/core/b5;->abstract(Ljava/lang/String;ILjava/lang/String;Lfreemarker/template/TemplateModel;)Landroid/support/v4/k52;

    move-result-object p0

    return-object p0
.end method

.method public static final(Ljava/lang/String;II)Landroid/support/v4/k52;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p2}, Lfreemarker/core/b5;->super(Ljava/lang/String;III)Landroid/support/v4/k52;

    move-result-object p0

    return-object p0
.end method

.method public static finally(Ljava/lang/String;ILfreemarker/template/TemplateModel;)Landroid/support/v4/k52;
    .locals 1

    const-string v0, "sequence or collection"

    .line 1
    invoke-static {p0, p1, v0, p2}, Lfreemarker/core/b5;->abstract(Ljava/lang/String;ILjava/lang/String;Lfreemarker/template/TemplateModel;)Landroid/support/v4/k52;

    move-result-object p0

    return-object p0
.end method

.method private static for(Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;
    .locals 6

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move v4, p2

    move v5, p3

    .line 1
    invoke-static/range {v0 .. v5}, Lfreemarker/core/b5;->new(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZII)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static goto(Lfreemarker/template/static;II)Ljava/lang/String;
    .locals 1

    const-string v0, "at"

    .line 1
    invoke-static {v0, p0, p1, p2}, Lfreemarker/core/b5;->if(Ljava/lang/String;Lfreemarker/template/static;II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static if(Ljava/lang/String;Lfreemarker/template/static;II)Ljava/lang/String;
    .locals 0

    if-eqz p1, :cond_0

    .line 1
    invoke-virtual {p1}, Lfreemarker/template/static;->q1()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-static {p0, p1, p2, p3}, Lfreemarker/core/b5;->for(Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static import(Lfreemarker/core/h0;Landroid/support/v4/xb2;)Landroid/support/v4/vl2;
    .locals 3

    .line 1
    new-instance v0, Landroid/support/v4/vl2;

    new-instance v1, Lfreemarker/core/z4;

    const-string v2, "Can\'t convert the date-like value to string because it isn\'t known if it\'s a date (no time part), time or date-time value."

    invoke-direct {v1, v2}, Lfreemarker/core/z4;-><init>(Ljava/lang/String;)V

    .line 2
    invoke-virtual {v1, p0}, Lfreemarker/core/z4;->if(Lfreemarker/core/h0;)Lfreemarker/core/z4;

    move-result-object p0

    sget-object v1, Lfreemarker/core/b5;->new:[Ljava/lang/Object;

    .line 3
    invoke-virtual {p0, v1}, Lfreemarker/core/z4;->catch([Ljava/lang/Object;)Lfreemarker/core/z4;

    move-result-object p0

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1, p0}, Landroid/support/v4/vl2;-><init>(Ljava/lang/Throwable;Lfreemarker/core/d0;Lfreemarker/core/z4;)V

    return-object v0
.end method

.method public static native(Ljava/lang/String;Lfreemarker/core/d0;)Lfreemarker/template/TemplateException;
    .locals 4

    .line 1
    new-instance v0, Landroid/support/v4/nl2;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "Instantiating "

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p0, v1, v2

    const/4 p0, 0x2

    const-string v2, " is not allowed in the template for security reasons."

    aput-object v2, v1, p0

    invoke-direct {v0, p1, v1}, Landroid/support/v4/nl2;-><init>(Lfreemarker/core/d0;[Ljava/lang/Object;)V

    return-object v0
.end method

.method private static new(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZII)Ljava/lang/String;
    .locals 2

    if-gez p4, :cond_0

    const/4 p2, 0x0

    const-string p1, "?eval-ed string"

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "template "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2
    invoke-static {p1}, Lfreemarker/template/utility/super;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    const-string p1, "nameless template"

    .line 3
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "in "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p2, :cond_3

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " in "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p3, :cond_2

    const-string p3, "function "

    goto :goto_1

    :cond_2
    const-string p3, "macro "

    :goto_1
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4
    invoke-static {p2}, Lfreemarker/template/utility/super;->synchronized(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    :cond_3
    const-string p1, ""

    :goto_2
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5
    invoke-static {p4, p5}, Lfreemarker/core/b5;->class(II)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static package(Ljava/lang/String;ILfreemarker/template/TemplateModel;)Landroid/support/v4/k52;
    .locals 1

    const-string v0, "string"

    .line 1
    invoke-static {p0, p1, v0, p2}, Lfreemarker/core/b5;->abstract(Ljava/lang/String;ILjava/lang/String;Lfreemarker/template/TemplateModel;)Landroid/support/v4/k52;

    move-result-object p0

    return-object p0
.end method

.method public static private(Ljava/lang/String;ILfreemarker/template/TemplateModel;)Landroid/support/v4/k52;
    .locals 1

    const-string v0, "string or markup output"

    .line 1
    invoke-static {p0, p1, v0, p2}, Lfreemarker/core/b5;->abstract(Ljava/lang/String;ILjava/lang/String;Lfreemarker/template/TemplateModel;)Landroid/support/v4/k52;

    move-result-object p0

    return-object p0
.end method

.method public static public(Lfreemarker/template/TemplateModel;Lfreemarker/template/TemplateHashModelEx;)Landroid/support/v4/k52;
    .locals 7

    .line 1
    new-instance v0, Landroid/support/v4/vl2;

    new-instance v1, Lfreemarker/core/z4;

    const/4 v2, 0x3

    new-array v3, v2, [Ljava/lang/Object;

    const-string v4, "When listing key-value pairs of traditional hash implementations, all keys must be strings, but one of them was "

    const/4 v5, 0x0

    aput-object v4, v3, v5

    new-instance v4, Landroid/support/v4/zk2;

    new-instance v6, Landroid/support/v4/bl2;

    invoke-direct {v6, p0}, Landroid/support/v4/bl2;-><init>(Lfreemarker/template/TemplateModel;)V

    invoke-direct {v4, v6}, Landroid/support/v4/zk2;-><init>(Ljava/lang/Object;)V

    const/4 p0, 0x1

    aput-object v4, v3, p0

    const-string v4, "."

    const/4 v6, 0x2

    aput-object v4, v3, v6

    invoke-direct {v1, v3}, Lfreemarker/core/z4;-><init>([Ljava/lang/Object;)V

    const/4 v3, 0x5

    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "The listed value\'s TemplateModel class was "

    aput-object v4, v3, v5

    new-instance v4, Landroid/support/v4/il2;

    .line 2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-direct {v4, p1}, Landroid/support/v4/il2;-><init>(Ljava/lang/Class;)V

    aput-object v4, v3, p0

    const-string p0, ", which doesn\'t implement "

    aput-object p0, v3, v6

    new-instance p0, Landroid/support/v4/il2;

    const-class p1, Lfreemarker/template/TemplateHashModelEx2;

    invoke-direct {p0, p1}, Landroid/support/v4/il2;-><init>(Ljava/lang/Class;)V

    aput-object p0, v3, v2

    const/4 p0, 0x4

    const-string p1, ", which leads to this restriction."

    aput-object p1, v3, p0

    .line 3
    invoke-virtual {v1, v3}, Lfreemarker/core/z4;->break([Ljava/lang/Object;)Lfreemarker/core/z4;

    move-result-object p0

    invoke-direct {v0, p0}, Landroid/support/v4/vl2;-><init>(Lfreemarker/core/z4;)V

    return-object v0
.end method

.method public static return(Lfreemarker/core/h0;)Lfreemarker/template/TemplateException;
    .locals 4

    .line 1
    new-instance v0, Landroid/support/v4/nl2;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "The result is a listable value with lazy transformation(s) applied on it, but it\'s not an FTL sequence (it\'s not a List-like value, but an Iterator-like value). The place doesn\'t support such values due to technical limitations. So either pass it to a construct that supports such values (like "

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "<#list transformedListable as x>"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "), or, if you know that you don\'t have too many elements, use transformedListable?sequence to allow it to be treated as an FTL sequence."

    aput-object v3, v1, v2

    invoke-direct {v0, p0, v1}, Landroid/support/v4/nl2;-><init>(Lfreemarker/core/h0;[Ljava/lang/Object;)V

    return-object v0
.end method

.method public static varargs static(Ljava/lang/String;I[Ljava/lang/Object;)Landroid/support/v4/k52;
    .locals 3

    .line 1
    new-instance v0, Landroid/support/v4/vl2;

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const-string p0, "(...) argument #"

    const/4 v2, 0x1

    aput-object p0, v1, v2

    add-int/2addr p1, v2

    .line 2
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 p1, 0x2

    aput-object p0, v1, p1

    const/4 p0, 0x3

    const-string p1, " had invalid value: "

    aput-object p1, v1, p0

    const/4 p0, 0x4

    aput-object p2, v1, p0

    invoke-direct {v0, v1}, Landroid/support/v4/vl2;-><init>([Ljava/lang/Object;)V

    return-object v0
.end method

.method public static strictfp(Ljava/lang/String;I)Ljava/lang/String;
    .locals 5

    const/4 v0, 0x5

    if-ge p1, v0, :cond_0

    const/4 p1, 0x5

    :cond_0
    const/16 v0, 0xa

    .line 1
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, -0x1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eq v0, v1, :cond_1

    .line 2
    invoke-virtual {p0, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    const/16 v4, 0xd

    .line 3
    invoke-virtual {p0, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    if-eq v4, v1, :cond_2

    .line 4
    invoke-virtual {p0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x1

    .line 5
    :cond_2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, p1, :cond_3

    add-int/lit8 p1, p1, -0x3

    .line 6
    invoke-virtual {p0, v3, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :cond_3
    move v2, v0

    :goto_1
    if-nez v2, :cond_4

    return-object p0

    :cond_4
    const-string p1, "."

    .line 7
    invoke-virtual {p0, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    const-string v1, "..."

    if-eqz v0, :cond_7

    const-string v0, ".."

    .line 8
    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 9
    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    return-object p0

    .line 10
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 11
    :cond_6
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 12
    :cond_7
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static super(Ljava/lang/String;III)Landroid/support/v4/k52;
    .locals 2

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 2
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string p0, "("

    .line 3
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eqz p3, :cond_0

    const-string p0, "..."

    .line 4
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    const-string p0, ") expects "

    .line 5
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 p0, 0x1

    if-ne p2, p3, :cond_2

    if-nez p3, :cond_1

    const-string p2, "no"

    .line 6
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 7
    :cond_1
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    sub-int v1, p3, p2

    if-ne v1, p0, :cond_3

    .line 8
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string p2, " or "

    .line 9
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 10
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 11
    :cond_3
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const p2, 0x7fffffff

    if-eq p3, p2, :cond_4

    const-string p2, " to "

    .line 12
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 13
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_4
    const-string p2, " or more (unlimited)"

    .line 14
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_0
    const-string p2, " argument"

    .line 15
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-le p3, p0, :cond_5

    const-string p0, "s"

    .line 16
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5
    const-string p0, " but has received "

    .line 17
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-nez p1, :cond_6

    const-string p0, "none"

    .line 18
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 19
    :cond_6
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1
    const-string p0, "."

    .line 20
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 21
    new-instance p0, Landroid/support/v4/vl2;

    invoke-virtual {v0}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/support/v4/vl2;-><init>([Ljava/lang/Object;)V

    return-object p0
.end method

.method public static switch(Ljava/lang/String;ILfreemarker/template/TemplateModel;)Landroid/support/v4/k52;
    .locals 1

    const-string v0, "boolean"

    .line 1
    invoke-static {p0, p1, v0, p2}, Lfreemarker/core/b5;->abstract(Ljava/lang/String;ILjava/lang/String;Lfreemarker/template/TemplateModel;)Landroid/support/v4/k52;

    move-result-object p0

    return-object p0
.end method

.method public static this(Ljava/lang/String;II)Ljava/lang/String;
    .locals 1

    const-string v0, "at"

    .line 1
    invoke-static {v0, p0, p1, p2}, Lfreemarker/core/b5;->for(Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static throw(Lfreemarker/core/z3;Lfreemarker/core/h0;Landroid/support/v4/p52;Z)Lfreemarker/template/TemplateException;
    .locals 4

    .line 1
    new-instance v0, Lfreemarker/core/z4;

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "Failed to format date/time/datetime with format "

    aput-object v3, v1, v2

    new-instance v2, Landroid/support/v4/fl2;

    .line 2
    invoke-virtual {p0}, Landroid/support/v4/o52;->do()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v2, p0}, Landroid/support/v4/fl2;-><init>(Ljava/lang/Object;)V

    const/4 p0, 0x1

    aput-object v2, v1, p0

    const/4 p0, 0x2

    const-string v2, ": "

    aput-object v2, v1, p0

    .line 3
    invoke-virtual {p2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    const/4 v2, 0x3

    aput-object p0, v1, v2

    invoke-direct {v0, v1}, Lfreemarker/core/z4;-><init>([Ljava/lang/Object;)V

    .line 4
    invoke-virtual {v0, p1}, Lfreemarker/core/z4;->if(Lfreemarker/core/h0;)Lfreemarker/core/z4;

    move-result-object p0

    const/4 p1, 0x0

    if-eqz p3, :cond_0

    .line 5
    new-instance p3, Landroid/support/v4/vl2;

    invoke-direct {p3, p2, p1, p0}, Landroid/support/v4/vl2;-><init>(Ljava/lang/Throwable;Lfreemarker/core/d0;Lfreemarker/core/z4;)V

    goto :goto_0

    :cond_0
    new-instance p3, Landroid/support/v4/nl2;

    invoke-direct {p3, p2, p1, p0}, Landroid/support/v4/nl2;-><init>(Ljava/lang/Throwable;Lfreemarker/core/d0;Lfreemarker/core/z4;)V

    :goto_0
    return-object p3
.end method

.method public static throws(Ljava/lang/String;ILfreemarker/template/TemplateModel;)Landroid/support/v4/k52;
    .locals 1

    const-string v0, "extended hash"

    .line 1
    invoke-static {p0, p1, v0, p2}, Lfreemarker/core/b5;->abstract(Ljava/lang/String;ILjava/lang/String;Lfreemarker/template/TemplateModel;)Landroid/support/v4/k52;

    move-result-object p0

    return-object p0
.end method

.method public static try(Lfreemarker/template/static;II)Ljava/lang/String;
    .locals 1

    const-string v0, "on"

    .line 1
    invoke-static {v0, p0, p1, p2}, Lfreemarker/core/b5;->if(Ljava/lang/String;Lfreemarker/template/static;II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static while(Lfreemarker/core/f4;Lfreemarker/core/h0;Landroid/support/v4/p52;Z)Lfreemarker/template/TemplateException;
    .locals 4

    .line 1
    new-instance v0, Lfreemarker/core/z4;

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "Failed to format number with format "

    aput-object v3, v1, v2

    new-instance v2, Landroid/support/v4/fl2;

    .line 2
    invoke-virtual {p0}, Landroid/support/v4/o52;->do()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v2, p0}, Landroid/support/v4/fl2;-><init>(Ljava/lang/Object;)V

    const/4 p0, 0x1

    aput-object v2, v1, p0

    const/4 p0, 0x2

    const-string v2, ": "

    aput-object v2, v1, p0

    .line 3
    invoke-virtual {p2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    const/4 v2, 0x3

    aput-object p0, v1, v2

    invoke-direct {v0, v1}, Lfreemarker/core/z4;-><init>([Ljava/lang/Object;)V

    .line 4
    invoke-virtual {v0, p1}, Lfreemarker/core/z4;->if(Lfreemarker/core/h0;)Lfreemarker/core/z4;

    move-result-object p0

    const/4 p1, 0x0

    if-eqz p3, :cond_0

    .line 5
    new-instance p3, Landroid/support/v4/vl2;

    invoke-direct {p3, p2, p1, p0}, Landroid/support/v4/vl2;-><init>(Ljava/lang/Throwable;Lfreemarker/core/d0;Lfreemarker/core/z4;)V

    goto :goto_0

    :cond_0
    new-instance p3, Landroid/support/v4/nl2;

    invoke-direct {p3, p2, p1, p0}, Landroid/support/v4/nl2;-><init>(Ljava/lang/Throwable;Lfreemarker/core/d0;Lfreemarker/core/z4;)V

    :goto_0
    return-object p3
.end method
