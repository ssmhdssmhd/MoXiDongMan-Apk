.class public Landroid/support/v4/ui0;
.super Ljava/net/URLStreamHandler;
.source "SourceFile"


# static fields
.field public static final do:Ljava/net/URLStreamHandler;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Landroid/support/v4/ui0;

    invoke-direct {v0}, Landroid/support/v4/ui0;-><init>()V

    sput-object v0, Landroid/support/v4/ui0;->do:Ljava/net/URLStreamHandler;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/net/URLStreamHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public getDefaultPort()I
    .locals 1

    const/16 v0, 0x50

    return v0
.end method

.method public openConnection(Ljava/net/URL;)Ljava/net/URLConnection;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public parseURL(Ljava/net/URL;Ljava/lang/String;II)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Ljava/net/URLStreamHandler;->parseURL(Ljava/net/URL;Ljava/lang/String;II)V

    return-void
.end method
