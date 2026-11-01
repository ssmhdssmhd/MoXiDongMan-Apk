.class final Lfreemarker/core/k;
.super Lfreemarker/core/h0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lfreemarker/core/k$do;
    }
.end annotation


# static fields
.field public static final a:Ljava/lang/String; = "auto_esc"

.field public static final abstract:Ljava/lang/String; = "vars"

.field public static final b:Ljava/lang/String; = "urlEscapingCharset"

.field public static final break:Ljava/lang/String; = "templateName"

.field public static final c:Ljava/lang/String; = "url_escaping_charset"

.field public static final catch:Ljava/lang/String; = "template_name"

.field public static final class:Ljava/lang/String; = "mainTemplateName"

.field public static final const:Ljava/lang/String; = "main_template_name"

.field public static final continue:Ljava/lang/String; = "version"

.field public static final d:Ljava/lang/String; = "now"

.field public static final default:Ljava/lang/String; = "locale_object"

.field public static final e:Ljava/lang/String; = "get_optional_template"

.field public static final extends:Ljava/lang/String; = "currentNode"

.field public static final f:Ljava/lang/String; = "getOptionalTemplate"

.field public static final final:Ljava/lang/String; = "currentTemplateName"

.field public static final finally:Ljava/lang/String; = "current_node"

.field public static final g:Ljava/lang/String; = "caller_template_name"

.field public static final h:Ljava/lang/String; = "callerTemplateName"

.field public static final i:[Ljava/lang/String;

.field public static final implements:Ljava/lang/String; = "outputFormat"

.field public static final import:Ljava/lang/String; = "globals"

.field public static final instanceof:Ljava/lang/String; = "output_format"

.field public static final interface:Ljava/lang/String; = "error"

.field public static final native:Ljava/lang/String; = "locals"

.field public static final package:Ljava/lang/String; = "node"

.field public static final private:Ljava/lang/String; = "pass"

.field public static final protected:Ljava/lang/String; = "outputEncoding"

.field public static final public:Ljava/lang/String; = "dataModel"

.field public static final return:Ljava/lang/String; = "data_model"

.field public static final static:Ljava/lang/String; = "lang"

.field public static final strictfp:Ljava/lang/String; = "incompatibleImprovements"

.field public static final super:Ljava/lang/String; = "current_template_name"

.field public static final switch:Ljava/lang/String; = "locale"

.field public static final synchronized:Ljava/lang/String; = "autoEsc"

.field public static final throw:Ljava/lang/String; = "namespace"

.field public static final throws:Ljava/lang/String; = "localeObject"

.field public static final transient:Ljava/lang/String; = "output_encoding"

.field public static final volatile:Ljava/lang/String; = "incompatible_improvements"

.field public static final while:Ljava/lang/String; = "main"


# instance fields
.field private final goto:Ljava/lang/String;

.field private final this:Lfreemarker/template/TemplateModel;


# direct methods
.method public static constructor <clinit>()V
    .locals 38

    const-string v0, "autoEsc"

    const-string v1, "auto_esc"

    const-string v2, "callerTemplateName"

    const-string v3, "caller_template_name"

    const-string v4, "currentNode"

    const-string v5, "currentTemplateName"

    const-string v6, "current_node"

    const-string v7, "current_template_name"

    const-string v8, "dataModel"

    const-string v9, "data_model"

    const-string v10, "error"

    const-string v11, "getOptionalTemplate"

    const-string v12, "get_optional_template"

    const-string v13, "globals"

    const-string v14, "incompatibleImprovements"

    const-string v15, "incompatible_improvements"

    const-string v16, "lang"

    const-string v17, "locale"

    const-string v18, "localeObject"

    const-string v19, "locale_object"

    const-string v20, "locals"

    const-string v21, "main"

    const-string v22, "mainTemplateName"

    const-string v23, "main_template_name"

    const-string v24, "namespace"

    const-string v25, "node"

    const-string v26, "now"

    const-string v27, "outputEncoding"

    const-string v28, "outputFormat"

    const-string v29, "output_encoding"

    const-string v30, "output_format"

    const-string v31, "pass"

    const-string v32, "templateName"

    const-string v33, "template_name"

    const-string v34, "urlEscapingCharset"

    const-string v35, "url_escaping_charset"

    const-string v36, "vars"

    const-string v37, "version"

    .line 1
    filled-new-array/range {v0 .. v37}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lfreemarker/core/k;->i:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lfreemarker/core/m4;Lfreemarker/core/k0;Lfreemarker/template/TemplateModel;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/core/h3;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lfreemarker/core/h0;-><init>()V

    .line 2
    iget-object v0, p1, Lfreemarker/core/m4;->image:Ljava/lang/String;

    .line 3
    iput-object p3, p0, Lfreemarker/core/k;->this:Lfreemarker/template/TemplateModel;

    .line 4
    sget-object p3, Lfreemarker/core/k;->i:[Ljava/lang/String;

    invoke-static {p3, v0}, Ljava/util/Arrays;->binarySearch([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p3

    if-gez p3, :cond_a

    .line 5
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown special variable name: "

    .line 6
    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7
    invoke-static {v0}, Lfreemarker/template/utility/super;->synchronized(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "."

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8
    iget p2, p2, Lfreemarker/core/k0;->super:I

    const/16 v2, 0xa

    const/16 v3, 0xb

    if-eq p2, v2, :cond_0

    goto :goto_0

    :cond_0
    const/16 p2, 0xb

    :goto_0
    const-string v2, "auto_escape"

    .line 9
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v4, 0x0

    if-nez v2, :cond_4

    const-string v2, "auto_escaping"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    const-string v2, "autoesc"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_2

    :cond_1
    const-string v2, "autoEscape"

    .line 10
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "autoEscaping"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    move-object v0, v4

    goto :goto_3

    :cond_3
    :goto_1
    const-string v0, "autoEsc"

    goto :goto_3

    :cond_4
    :goto_2
    const-string v0, "auto_esc"

    :goto_3
    if-eqz v0, :cond_5

    const-string v2, " You may meant: "

    .line 11
    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    invoke-static {v0}, Lfreemarker/template/utility/super;->synchronized(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5
    const-string v0, "\nThe allowed special variable names are: "

    .line 13
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 14
    :goto_4
    sget-object v5, Lfreemarker/core/k;->i:[Ljava/lang/String;

    array-length v6, v5

    if-ge v2, v6, :cond_9

    .line 15
    aget-object v5, v5, v2

    .line 16
    invoke-static {v5}, Landroid/support/v4/yk2;->for(Ljava/lang/String;)I

    move-result v6

    const/16 v7, 0xc

    if-ne p2, v7, :cond_6

    if-eq v6, v3, :cond_8

    goto :goto_5

    :cond_6
    if-eq v6, v7, :cond_8

    :goto_5
    if-eqz v1, :cond_7

    const/4 v1, 0x0

    goto :goto_6

    :cond_7
    const-string v6, ", "

    .line 17
    invoke-virtual {p3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    :goto_6
    invoke-virtual {p3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_8
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 19
    :cond_9
    new-instance p2, Lfreemarker/core/h3;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3, v4, p1}, Lfreemarker/core/h3;-><init>(Ljava/lang/String;Lfreemarker/template/static;Lfreemarker/core/m4;)V

    throw p2

    .line 20
    :cond_a
    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lfreemarker/core/k;->goto:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public case()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lfreemarker/core/k;->for()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public else()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public for()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lfreemarker/core/k;->goto:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

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

    const/4 v0, 0x0

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
    iget-object v0, p0, Lfreemarker/core/k;->this:Lfreemarker/template/TemplateModel;

    if-eqz v0, :cond_0

    return-object v0

    .line 2
    :cond_0
    iget-object v0, p0, Lfreemarker/core/k;->goto:Ljava/lang/String;

    const-string v1, "namespace"

    if-ne v0, v1, :cond_1

    .line 3
    invoke-virtual {p1}, Lfreemarker/core/d0;->y1()Lfreemarker/core/d0$this;

    move-result-object p1

    return-object p1

    :cond_1
    const-string v1, "main"

    if-ne v0, v1, :cond_2

    .line 4
    invoke-virtual {p1}, Lfreemarker/core/d0;->U1()Lfreemarker/core/d0$this;

    move-result-object p1

    return-object p1

    :cond_2
    const-string v1, "globals"

    if-ne v0, v1, :cond_3

    .line 5
    invoke-virtual {p1}, Lfreemarker/core/d0;->K1()Lfreemarker/template/TemplateHashModel;

    move-result-object p1

    return-object p1

    :cond_3
    const/4 v1, 0x0

    const-string v2, "locals"

    if-ne v0, v2, :cond_5

    .line 6
    invoke-virtual {p1}, Lfreemarker/core/d0;->x1()Lfreemarker/core/x1$do;

    move-result-object p1

    if-nez p1, :cond_4

    goto :goto_0

    .line 7
    :cond_4
    invoke-virtual {p1}, Lfreemarker/core/x1$do;->do()Lfreemarker/core/d0$this;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_5
    const-string v2, "data_model"

    if-eq v0, v2, :cond_26

    const-string v2, "dataModel"

    if-ne v0, v2, :cond_6

    goto/16 :goto_c

    :cond_6
    const-string v2, "vars"

    if-ne v0, v2, :cond_7

    .line 8
    new-instance v0, Lfreemarker/core/k$do;

    invoke-direct {v0, p1}, Lfreemarker/core/k$do;-><init>(Lfreemarker/core/d0;)V

    return-object v0

    :cond_7
    const-string v2, "locale"

    if-ne v0, v2, :cond_8

    .line 9
    new-instance v0, Landroid/support/v4/ez1;

    invoke-virtual {p1}, Lfreemarker/core/t;->strictfp()Ljava/util/Locale;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Landroid/support/v4/ez1;-><init>(Ljava/lang/String;)V

    return-object v0

    :cond_8
    const-string v2, "locale_object"

    if-eq v0, v2, :cond_25

    const-string v2, "localeObject"

    if-ne v0, v2, :cond_9

    goto/16 :goto_b

    :cond_9
    const-string v2, "lang"

    if-ne v0, v2, :cond_a

    .line 10
    new-instance v0, Landroid/support/v4/ez1;

    invoke-virtual {p1}, Lfreemarker/core/t;->strictfp()Ljava/util/Locale;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Landroid/support/v4/ez1;-><init>(Ljava/lang/String;)V

    return-object v0

    :cond_a
    const-string v2, "current_node"

    if-eq v0, v2, :cond_24

    const-string v2, "node"

    if-eq v0, v2, :cond_24

    const-string v2, "currentNode"

    if-ne v0, v2, :cond_b

    goto/16 :goto_a

    :cond_b
    const-string v2, "template_name"

    if-eq v0, v2, :cond_22

    const-string v2, "templateName"

    if-ne v0, v2, :cond_c

    goto/16 :goto_8

    :cond_c
    const-string v2, "main_template_name"

    if-eq v0, v2, :cond_21

    const-string v2, "mainTemplateName"

    if-ne v0, v2, :cond_d

    goto/16 :goto_7

    :cond_d
    const-string v2, "current_template_name"

    if-eq v0, v2, :cond_20

    const-string v2, "currentTemplateName"

    if-ne v0, v2, :cond_e

    goto/16 :goto_6

    :cond_e
    const-string v2, "pass"

    if-ne v0, v2, :cond_f

    .line 11
    sget-object p1, Lfreemarker/core/x1;->while:Lfreemarker/core/x1;

    return-object p1

    :cond_f
    const-string v2, "output_encoding"

    if-eq v0, v2, :cond_1f

    const-string v2, "outputEncoding"

    if-ne v0, v2, :cond_10

    goto/16 :goto_5

    :cond_10
    const-string v2, "url_escaping_charset"

    if-eq v0, v2, :cond_1e

    const-string v2, "urlEscapingCharset"

    if-ne v0, v2, :cond_11

    goto/16 :goto_4

    :cond_11
    const-string v2, "error"

    if-ne v0, v2, :cond_12

    .line 12
    new-instance v0, Landroid/support/v4/ez1;

    invoke-virtual {p1}, Lfreemarker/core/d0;->z1()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Landroid/support/v4/ez1;-><init>(Ljava/lang/String;)V

    return-object v0

    :cond_12
    const-string v2, "now"

    if-ne v0, v2, :cond_13

    .line 13
    new-instance p1, Landroid/support/v4/wy1;

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    const/4 v1, 0x3

    invoke-direct {p1, v0, v1}, Landroid/support/v4/wy1;-><init>(Ljava/util/Date;I)V

    return-object p1

    :cond_13
    const-string v2, "version"

    if-ne v0, v2, :cond_14

    .line 14
    new-instance p1, Landroid/support/v4/ez1;

    invoke-static {}, Lfreemarker/template/do;->b2()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/support/v4/ez1;-><init>(Ljava/lang/String;)V

    return-object p1

    :cond_14
    const-string v2, "incompatible_improvements"

    if-eq v0, v2, :cond_1d

    const-string v2, "incompatibleImprovements"

    if-ne v0, v2, :cond_15

    goto :goto_3

    :cond_15
    const-string v2, "get_optional_template"

    if-ne v0, v2, :cond_16

    .line 15
    sget-object p1, Lfreemarker/core/p0;->if:Lfreemarker/core/p0;

    return-object p1

    :cond_16
    const-string v2, "getOptionalTemplate"

    if-ne v0, v2, :cond_17

    .line 16
    sget-object p1, Lfreemarker/core/p0;->for:Lfreemarker/core/p0;

    return-object p1

    :cond_17
    const-string v2, "caller_template_name"

    if-eq v0, v2, :cond_19

    const-string v2, "callerTemplateName"

    if-ne v0, v2, :cond_18

    goto :goto_1

    .line 17
    :cond_18
    new-instance p1, Landroid/support/v4/nl2;

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "Invalid special variable: "

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lfreemarker/core/k;->goto:Ljava/lang/String;

    aput-object v2, v0, v1

    invoke-direct {p1, p0, v0}, Landroid/support/v4/nl2;-><init>(Lfreemarker/core/h0;[Ljava/lang/Object;)V

    throw p1

    .line 18
    :cond_19
    :goto_1
    invoke-virtual {p1}, Lfreemarker/core/d0;->x1()Lfreemarker/core/x1$do;

    move-result-object v0

    if-eqz v0, :cond_1c

    .line 19
    iget-object p1, v0, Lfreemarker/core/x1$do;->if:Lfreemarker/core/h4;

    if-eqz p1, :cond_1a

    .line 20
    invoke-virtual {p1}, Lfreemarker/core/h4;->getTemplate()Lfreemarker/template/static;

    move-result-object p1

    invoke-virtual {p1}, Lfreemarker/template/static;->h1()Ljava/lang/String;

    move-result-object v1

    :cond_1a
    if-eqz v1, :cond_1b

    .line 21
    new-instance p1, Landroid/support/v4/ez1;

    invoke-direct {p1, v1}, Landroid/support/v4/ez1;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :cond_1b
    sget-object p1, Lfreemarker/template/TemplateScalarModel;->EMPTY_STRING:Lfreemarker/template/TemplateModel;

    :goto_2
    return-object p1

    .line 22
    :cond_1c
    new-instance v0, Lfreemarker/template/TemplateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can\'t get ."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lfreemarker/core/k;->goto:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " here, as there\'s no macro or function (that\'s implemented in the template) call in context."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lfreemarker/template/TemplateException;-><init>(Ljava/lang/String;Lfreemarker/core/d0;)V

    throw v0

    .line 23
    :cond_1d
    :goto_3
    new-instance v0, Landroid/support/v4/ez1;

    invoke-virtual {p1}, Lfreemarker/core/d0;->u1()Lfreemarker/template/do;

    move-result-object p1

    invoke-virtual {p1}, Lfreemarker/template/do;->getIncompatibleImprovements()Landroid/support/v4/we2;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v4/we2;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Landroid/support/v4/ez1;-><init>(Ljava/lang/String;)V

    return-object v0

    .line 24
    :cond_1e
    :goto_4
    invoke-virtual {p1}, Lfreemarker/core/t;->k()Ljava/lang/String;

    move-result-object p1

    .line 25
    invoke-static {p1}, Landroid/support/v4/ez1;->newInstanceOrNull(Ljava/lang/String;)Landroid/support/v4/ez1;

    move-result-object p1

    return-object p1

    .line 26
    :cond_1f
    :goto_5
    invoke-virtual {p1}, Lfreemarker/core/t;->instanceof()Ljava/lang/String;

    move-result-object p1

    .line 27
    invoke-static {p1}, Landroid/support/v4/ez1;->newInstanceOrNull(Ljava/lang/String;)Landroid/support/v4/ez1;

    move-result-object p1

    return-object p1

    .line 28
    :cond_20
    :goto_6
    invoke-virtual {p1}, Lfreemarker/core/d0;->A1()Lfreemarker/template/static;

    move-result-object p1

    invoke-virtual {p1}, Lfreemarker/template/static;->h1()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/support/v4/ez1;->newInstanceOrNull(Ljava/lang/String;)Landroid/support/v4/ez1;

    move-result-object p1

    return-object p1

    .line 29
    :cond_21
    :goto_7
    invoke-virtual {p1}, Lfreemarker/core/d0;->V1()Lfreemarker/template/static;

    move-result-object p1

    invoke-virtual {p1}, Lfreemarker/template/static;->h1()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/support/v4/ez1;->newInstanceOrNull(Ljava/lang/String;)Landroid/support/v4/ez1;

    move-result-object p1

    return-object p1

    .line 30
    :cond_22
    :goto_8
    invoke-virtual {p1}, Lfreemarker/core/d0;->u1()Lfreemarker/template/do;

    move-result-object v0

    invoke-virtual {v0}, Lfreemarker/template/do;->getIncompatibleImprovements()Landroid/support/v4/we2;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/we2;->intValue()I

    move-result v0

    sget v1, Landroid/support/v4/ul2;->case:I

    if-lt v0, v1, :cond_23

    new-instance v0, Landroid/support/v4/ez1;

    .line 31
    invoke-virtual {p1}, Lfreemarker/core/d0;->f2()Lfreemarker/template/static;

    move-result-object p1

    invoke-virtual {p1}, Lfreemarker/template/static;->h1()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Landroid/support/v4/ez1;-><init>(Ljava/lang/String;)V

    goto :goto_9

    :cond_23
    new-instance v0, Landroid/support/v4/ez1;

    .line 32
    invoke-virtual {p1}, Lfreemarker/core/d0;->e2()Lfreemarker/template/static;

    move-result-object p1

    invoke-virtual {p1}, Lfreemarker/template/static;->h1()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Landroid/support/v4/ez1;-><init>(Ljava/lang/String;)V

    :goto_9
    return-object v0

    .line 33
    :cond_24
    :goto_a
    invoke-virtual {p1}, Lfreemarker/core/d0;->B1()Lfreemarker/template/TemplateNodeModel;

    move-result-object p1

    return-object p1

    .line 34
    :cond_25
    :goto_b
    invoke-virtual {p1}, Lfreemarker/core/t;->implements()Lfreemarker/template/ObjectWrapper;

    move-result-object v0

    invoke-virtual {p1}, Lfreemarker/core/t;->strictfp()Ljava/util/Locale;

    move-result-object p1

    invoke-interface {v0, p1}, Lfreemarker/template/ObjectWrapper;->wrap(Ljava/lang/Object;)Lfreemarker/template/TemplateModel;

    move-result-object p1

    return-object p1

    .line 35
    :cond_26
    :goto_c
    invoke-virtual {p1}, Lfreemarker/core/d0;->D1()Lfreemarker/template/TemplateHashModel;

    move-result-object p1

    return-object p1
.end method

.method public static(Ljava/lang/String;Lfreemarker/core/h0;Lfreemarker/core/h0$do;)Lfreemarker/core/h0;
    .locals 0

    return-object p0
.end method

.method public this(I)Ljava/lang/Object;
    .locals 0

    .line 1
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lfreemarker/core/k;->goto:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
