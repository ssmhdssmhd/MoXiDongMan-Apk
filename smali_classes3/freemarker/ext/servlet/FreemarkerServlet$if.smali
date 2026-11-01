.class Lfreemarker/ext/servlet/FreemarkerServlet$if;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfreemarker/ext/servlet/FreemarkerServlet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "if"
.end annotation


# instance fields
.field private final do:Ljava/lang/String;

.field private final if:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-static {p1}, Lfreemarker/ext/servlet/FreemarkerServlet$if;->new(Ljava/lang/String;)Z

    move-result v0

    invoke-direct {p0, p1, v0}, Lfreemarker/ext/servlet/FreemarkerServlet$if;-><init>(Ljava/lang/String;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lfreemarker/ext/servlet/FreemarkerServlet$if;->do:Ljava/lang/String;

    .line 4
    iput-boolean p2, p0, Lfreemarker/ext/servlet/FreemarkerServlet$if;->if:Z

    return-void
.end method

.method public static synthetic do(Lfreemarker/ext/servlet/FreemarkerServlet$if;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lfreemarker/ext/servlet/FreemarkerServlet$if;->if:Z

    return p0
.end method

.method public static synthetic for(Lfreemarker/ext/servlet/FreemarkerServlet$if;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-direct {p0}, Lfreemarker/ext/servlet/FreemarkerServlet$if;->try()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic if(Lfreemarker/ext/servlet/FreemarkerServlet$if;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lfreemarker/ext/servlet/FreemarkerServlet$if;->do:Ljava/lang/String;

    return-object p0
.end method

.method private static new(Ljava/lang/String;)Z
    .locals 5

    .line 1
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "charset="

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_3

    add-int/2addr v0, v2

    const/4 v3, 0x0

    :goto_0
    if-ltz v0, :cond_1

    .line 2
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 3
    invoke-static {v3}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v4

    if-nez v4, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    :goto_1
    if-eq v0, v2, :cond_2

    const/16 p0, 0x3b

    if-ne v3, p0, :cond_3

    :cond_2
    const/4 p0, 0x1

    return p0

    :cond_3
    return v1
.end method

.method private try()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lfreemarker/ext/servlet/FreemarkerServlet$if;->do:Ljava/lang/String;

    const/16 v1, 0x3b

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lfreemarker/ext/servlet/FreemarkerServlet$if;->do:Ljava/lang/String;

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lfreemarker/ext/servlet/FreemarkerServlet$if;->do:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
