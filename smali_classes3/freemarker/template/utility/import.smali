.class public Lfreemarker/template/utility/import;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lfreemarker/template/TemplateTransformModel;


# static fields
.field private static final do:[C

.field private static final for:[C

.field private static final if:[C

.field private static final new:[C

.field private static final try:[C


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "&lt;"

    .line 1
    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lfreemarker/template/utility/import;->do:[C

    const-string v0, "&gt;"

    .line 2
    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lfreemarker/template/utility/import;->if:[C

    const-string v0, "&amp;"

    .line 3
    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lfreemarker/template/utility/import;->for:[C

    const-string v0, "&quot;"

    .line 4
    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lfreemarker/template/utility/import;->new:[C

    const-string v0, "&apos;"

    .line 5
    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lfreemarker/template/utility/import;->try:[C

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
    sget-object v0, Lfreemarker/template/utility/import;->do:[C

    return-object v0
.end method

.method public static synthetic for()[C
    .locals 1

    .line 1
    sget-object v0, Lfreemarker/template/utility/import;->for:[C

    return-object v0
.end method

.method public static synthetic if()[C
    .locals 1

    .line 1
    sget-object v0, Lfreemarker/template/utility/import;->if:[C

    return-object v0
.end method

.method public static synthetic new()[C
    .locals 1

    .line 1
    sget-object v0, Lfreemarker/template/utility/import;->new:[C

    return-object v0
.end method

.method public static synthetic try()[C
    .locals 1

    .line 1
    sget-object v0, Lfreemarker/template/utility/import;->try:[C

    return-object v0
.end method


# virtual methods
.method public getWriter(Ljava/io/Writer;Ljava/util/Map;)Ljava/io/Writer;
    .locals 0

    .line 1
    new-instance p2, Lfreemarker/template/utility/import$do;

    invoke-direct {p2, p0, p1}, Lfreemarker/template/utility/import$do;-><init>(Lfreemarker/template/utility/import;Ljava/io/Writer;)V

    return-object p2
.end method
