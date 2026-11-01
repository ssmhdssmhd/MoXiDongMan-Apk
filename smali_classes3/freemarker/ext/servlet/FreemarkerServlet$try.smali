.class final enum Lfreemarker/ext/servlet/FreemarkerServlet$try;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lfreemarker/ext/servlet/FreemarkerServlet$InitParamValueEnum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfreemarker/ext/servlet/FreemarkerServlet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "try"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lfreemarker/ext/servlet/FreemarkerServlet$try;",
        ">;",
        "Lfreemarker/ext/servlet/FreemarkerServlet$InitParamValueEnum;"
    }
.end annotation


# static fields
.field public static final enum ALWAYS:Lfreemarker/ext/servlet/FreemarkerServlet$try;

.field public static final enum NEVER:Lfreemarker/ext/servlet/FreemarkerServlet$try;

.field public static final enum WHEN_TEMPLATE_HAS_MIME_TYPE:Lfreemarker/ext/servlet/FreemarkerServlet$try;

.field private static final synthetic do:[Lfreemarker/ext/servlet/FreemarkerServlet$try;


# instance fields
.field private final initParamValue:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 8

    .line 1
    new-instance v0, Lfreemarker/ext/servlet/FreemarkerServlet$try;

    const-string v1, "ALWAYS"

    const/4 v2, 0x0

    const-string v3, "always"

    invoke-direct {v0, v1, v2, v3}, Lfreemarker/ext/servlet/FreemarkerServlet$try;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lfreemarker/ext/servlet/FreemarkerServlet$try;->ALWAYS:Lfreemarker/ext/servlet/FreemarkerServlet$try;

    .line 2
    new-instance v1, Lfreemarker/ext/servlet/FreemarkerServlet$try;

    const-string v3, "NEVER"

    const/4 v4, 0x1

    const-string v5, "never"

    invoke-direct {v1, v3, v4, v5}, Lfreemarker/ext/servlet/FreemarkerServlet$try;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lfreemarker/ext/servlet/FreemarkerServlet$try;->NEVER:Lfreemarker/ext/servlet/FreemarkerServlet$try;

    .line 3
    new-instance v3, Lfreemarker/ext/servlet/FreemarkerServlet$try;

    const-string v5, "WHEN_TEMPLATE_HAS_MIME_TYPE"

    const/4 v6, 0x2

    const-string v7, "whenTemplateHasMimeType"

    invoke-direct {v3, v5, v6, v7}, Lfreemarker/ext/servlet/FreemarkerServlet$try;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Lfreemarker/ext/servlet/FreemarkerServlet$try;->WHEN_TEMPLATE_HAS_MIME_TYPE:Lfreemarker/ext/servlet/FreemarkerServlet$try;

    const/4 v5, 0x3

    new-array v5, v5, [Lfreemarker/ext/servlet/FreemarkerServlet$try;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    .line 4
    sput-object v5, Lfreemarker/ext/servlet/FreemarkerServlet$try;->do:[Lfreemarker/ext/servlet/FreemarkerServlet$try;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    iput-object p3, p0, Lfreemarker/ext/servlet/FreemarkerServlet$try;->initParamValue:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lfreemarker/ext/servlet/FreemarkerServlet$try;
    .locals 1

    .line 1
    const-class v0, Lfreemarker/ext/servlet/FreemarkerServlet$try;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lfreemarker/ext/servlet/FreemarkerServlet$try;

    return-object p0
.end method

.method public static values()[Lfreemarker/ext/servlet/FreemarkerServlet$try;
    .locals 1

    .line 1
    sget-object v0, Lfreemarker/ext/servlet/FreemarkerServlet$try;->do:[Lfreemarker/ext/servlet/FreemarkerServlet$try;

    invoke-virtual {v0}, [Lfreemarker/ext/servlet/FreemarkerServlet$try;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lfreemarker/ext/servlet/FreemarkerServlet$try;

    return-object v0
.end method


# virtual methods
.method public getInitParamValue()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lfreemarker/ext/servlet/FreemarkerServlet$try;->initParamValue:Ljava/lang/String;

    return-object v0
.end method
