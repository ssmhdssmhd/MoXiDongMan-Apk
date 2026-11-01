.class public Lfreemarker/template/utility/else;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lfreemarker/template/TemplateTransformModel;


# static fields
.field private static final do:[C

.field private static final for:[C

.field private static final if:[C

.field private static final new:[C


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "&lt;"

    .line 1
    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lfreemarker/template/utility/else;->do:[C

    const-string v0, "&gt;"

    .line 2
    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lfreemarker/template/utility/else;->if:[C

    const-string v0, "&amp;"

    .line 3
    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lfreemarker/template/utility/else;->for:[C

    const-string v0, "&quot;"

    .line 4
    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lfreemarker/template/utility/else;->new:[C

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic do()[C
    .locals 1

    .line 1
    sget-object v0, Lfreemarker/template/utility/else;->do:[C

    return-object v0
.end method

.method public static synthetic for()[C
    .locals 1

    .line 1
    sget-object v0, Lfreemarker/template/utility/else;->for:[C

    return-object v0
.end method

.method public static synthetic if()[C
    .locals 1

    .line 1
    sget-object v0, Lfreemarker/template/utility/else;->if:[C

    return-object v0
.end method

.method public static synthetic new()[C
    .locals 1

    .line 1
    sget-object v0, Lfreemarker/template/utility/else;->new:[C

    return-object v0
.end method


# virtual methods
.method public getWriter(Ljava/io/Writer;Ljava/util/Map;)Ljava/io/Writer;
    .locals 0

    .line 1
    new-instance p2, Lfreemarker/template/utility/else$do;

    invoke-direct {p2, p0, p1}, Lfreemarker/template/utility/else$do;-><init>(Lfreemarker/template/utility/else;Ljava/io/Writer;)V

    return-object p2
.end method
