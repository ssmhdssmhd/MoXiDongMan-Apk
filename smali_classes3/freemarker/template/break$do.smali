.class Lfreemarker/template/break$do;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lfreemarker/ext/beans/_BeansAPI$_BeansWrapperSubclassFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfreemarker/template/break;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "do"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lfreemarker/ext/beans/_BeansAPI$_BeansWrapperSubclassFactory<",
        "Lfreemarker/template/this;",
        "Landroid/support/v4/ry;",
        ">;"
    }
.end annotation


# static fields
.field private static final do:Lfreemarker/template/break$do;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lfreemarker/template/break$do;

    invoke-direct {v0}, Lfreemarker/template/break$do;-><init>()V

    sput-object v0, Lfreemarker/template/break$do;->do:Lfreemarker/template/break$do;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic do()Lfreemarker/template/break$do;
    .locals 1

    .line 1
    sget-object v0, Lfreemarker/template/break$do;->do:Lfreemarker/template/break$do;

    return-object v0
.end method


# virtual methods
.method public bridge synthetic create(Lfreemarker/ext/beans/else;)Lfreemarker/ext/beans/try;
    .locals 0

    .line 1
    check-cast p1, Landroid/support/v4/ry;

    invoke-virtual {p0, p1}, Lfreemarker/template/break$do;->if(Landroid/support/v4/ry;)Lfreemarker/template/this;

    move-result-object p1

    return-object p1
.end method

.method public if(Landroid/support/v4/ry;)Lfreemarker/template/this;
    .locals 2

    .line 1
    new-instance v0, Lfreemarker/template/this;

    const/4 v1, 0x1

    invoke-direct {v0, p1, v1}, Lfreemarker/template/this;-><init>(Landroid/support/v4/ry;Z)V

    return-object v0
.end method
