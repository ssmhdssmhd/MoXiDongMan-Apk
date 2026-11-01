.class final enum Lfreemarker/ext/servlet/FreemarkerServlet$else;
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
    name = "else"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lfreemarker/ext/servlet/FreemarkerServlet$else;",
        ">;",
        "Lfreemarker/ext/servlet/FreemarkerServlet$InitParamValueEnum;"
    }
.end annotation


# static fields
.field public static final enum DO_NOT_SET:Lfreemarker/ext/servlet/FreemarkerServlet$else;

.field public static final enum FORCE_CHARSET:Lfreemarker/ext/servlet/FreemarkerServlet$else;

.field public static final enum FROM_TEMPLATE:Lfreemarker/ext/servlet/FreemarkerServlet$else;

.field public static final enum LEGACY:Lfreemarker/ext/servlet/FreemarkerServlet$else;

.field private static final synthetic do:[Lfreemarker/ext/servlet/FreemarkerServlet$else;


# instance fields
.field private final initParamValue:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 10

    .line 1
    new-instance v0, Lfreemarker/ext/servlet/FreemarkerServlet$else;

    const-string v1, "LEGACY"

    const/4 v2, 0x0

    const-string v3, "legacy"

    invoke-direct {v0, v1, v2, v3}, Lfreemarker/ext/servlet/FreemarkerServlet$else;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lfreemarker/ext/servlet/FreemarkerServlet$else;->LEGACY:Lfreemarker/ext/servlet/FreemarkerServlet$else;

    .line 2
    new-instance v1, Lfreemarker/ext/servlet/FreemarkerServlet$else;

    const-string v3, "FROM_TEMPLATE"

    const/4 v4, 0x1

    const-string v5, "fromTemplate"

    invoke-direct {v1, v3, v4, v5}, Lfreemarker/ext/servlet/FreemarkerServlet$else;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lfreemarker/ext/servlet/FreemarkerServlet$else;->FROM_TEMPLATE:Lfreemarker/ext/servlet/FreemarkerServlet$else;

    .line 3
    new-instance v3, Lfreemarker/ext/servlet/FreemarkerServlet$else;

    const-string v5, "DO_NOT_SET"

    const/4 v6, 0x2

    const-string v7, "doNotSet"

    invoke-direct {v3, v5, v6, v7}, Lfreemarker/ext/servlet/FreemarkerServlet$else;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Lfreemarker/ext/servlet/FreemarkerServlet$else;->DO_NOT_SET:Lfreemarker/ext/servlet/FreemarkerServlet$else;

    .line 4
    new-instance v5, Lfreemarker/ext/servlet/FreemarkerServlet$else;

    const-string v7, "FORCE_CHARSET"

    const/4 v8, 0x3

    const-string v9, "force ${charsetName}"

    invoke-direct {v5, v7, v8, v9}, Lfreemarker/ext/servlet/FreemarkerServlet$else;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v5, Lfreemarker/ext/servlet/FreemarkerServlet$else;->FORCE_CHARSET:Lfreemarker/ext/servlet/FreemarkerServlet$else;

    const/4 v7, 0x4

    new-array v7, v7, [Lfreemarker/ext/servlet/FreemarkerServlet$else;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    .line 5
    sput-object v7, Lfreemarker/ext/servlet/FreemarkerServlet$else;->do:[Lfreemarker/ext/servlet/FreemarkerServlet$else;

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
    iput-object p3, p0, Lfreemarker/ext/servlet/FreemarkerServlet$else;->initParamValue:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lfreemarker/ext/servlet/FreemarkerServlet$else;
    .locals 1

    .line 1
    const-class v0, Lfreemarker/ext/servlet/FreemarkerServlet$else;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lfreemarker/ext/servlet/FreemarkerServlet$else;

    return-object p0
.end method

.method public static values()[Lfreemarker/ext/servlet/FreemarkerServlet$else;
    .locals 1

    .line 1
    sget-object v0, Lfreemarker/ext/servlet/FreemarkerServlet$else;->do:[Lfreemarker/ext/servlet/FreemarkerServlet$else;

    invoke-virtual {v0}, [Lfreemarker/ext/servlet/FreemarkerServlet$else;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lfreemarker/ext/servlet/FreemarkerServlet$else;

    return-object v0
.end method


# virtual methods
.method public getInitParamValue()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lfreemarker/ext/servlet/FreemarkerServlet$else;->initParamValue:Ljava/lang/String;

    return-object v0
.end method
