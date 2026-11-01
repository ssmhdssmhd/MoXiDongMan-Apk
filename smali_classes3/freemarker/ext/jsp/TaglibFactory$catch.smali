.class Lfreemarker/ext/jsp/TaglibFactory$catch;
.super Lfreemarker/ext/jsp/TaglibFactory$goto;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfreemarker/ext/jsp/TaglibFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "catch"
.end annotation


# instance fields
.field public final synthetic try:Lfreemarker/ext/jsp/TaglibFactory;


# direct methods
.method private constructor <init>(Lfreemarker/ext/jsp/TaglibFactory;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 2
    iput-object p1, p0, Lfreemarker/ext/jsp/TaglibFactory$catch;->try:Lfreemarker/ext/jsp/TaglibFactory;

    .line 3
    invoke-static {p1}, Lfreemarker/ext/jsp/TaglibFactory;->this(Lfreemarker/ext/jsp/TaglibFactory;)Ljavax/servlet/ServletContext;

    move-result-object v0

    invoke-static {v0, p2, p3}, Lfreemarker/ext/jsp/TaglibFactory;->for(Ljavax/servlet/ServletContext;Ljava/lang/String;Ljava/lang/String;)Ljava/net/URL;

    move-result-object v0

    new-instance v1, Lfreemarker/ext/jsp/TaglibFactory$catch$do;

    invoke-direct {v1, p1, p2}, Lfreemarker/ext/jsp/TaglibFactory$catch$do;-><init>(Lfreemarker/ext/jsp/TaglibFactory;Ljava/lang/String;)V

    .line 4
    invoke-direct {p0, p1, v0, v1, p3}, Lfreemarker/ext/jsp/TaglibFactory$goto;-><init>(Lfreemarker/ext/jsp/TaglibFactory;Ljava/net/URL;Lfreemarker/ext/jsp/TaglibFactory$InputStreamFactory;Ljava/lang/String;)V

    return-void
.end method

.method public synthetic constructor <init>(Lfreemarker/ext/jsp/TaglibFactory;Ljava/lang/String;Ljava/lang/String;Lfreemarker/ext/jsp/TaglibFactory$do;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lfreemarker/ext/jsp/TaglibFactory$catch;-><init>(Lfreemarker/ext/jsp/TaglibFactory;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
