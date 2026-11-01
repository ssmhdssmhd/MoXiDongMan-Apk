.class public Lcom/jayway/jsonpath/InvalidJsonException;
.super Lcom/jayway/jsonpath/JsonPathException;
.source "SourceFile"


# instance fields
.field private final json:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/jayway/jsonpath/JsonPathException;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/jayway/jsonpath/InvalidJsonException;->json:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1}, Lcom/jayway/jsonpath/JsonPathException;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 4
    iput-object p1, p0, Lcom/jayway/jsonpath/InvalidJsonException;->json:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    .line 5
    invoke-direct {p0, p1, p2}, Lcom/jayway/jsonpath/JsonPathException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    .line 6
    iput-object p1, p0, Lcom/jayway/jsonpath/InvalidJsonException;->json:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 0

    .line 7
    invoke-direct {p0, p1}, Lcom/jayway/jsonpath/JsonPathException;-><init>(Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    .line 8
    iput-object p1, p0, Lcom/jayway/jsonpath/InvalidJsonException;->json:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;Ljava/lang/String;)V
    .locals 0

    .line 9
    invoke-direct {p0, p1}, Lcom/jayway/jsonpath/JsonPathException;-><init>(Ljava/lang/Throwable;)V

    .line 10
    iput-object p2, p0, Lcom/jayway/jsonpath/InvalidJsonException;->json:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getJson()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/jayway/jsonpath/InvalidJsonException;->json:Ljava/lang/String;

    return-object v0
.end method
