.class Lfreemarker/ext/beans/case$do;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lfreemarker/ext/beans/_BeansAPI$_BeansWrapperSubclassFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfreemarker/ext/beans/case;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "do"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lfreemarker/ext/beans/_BeansAPI$_BeansWrapperSubclassFactory<",
        "Lfreemarker/ext/beans/try;",
        "Lfreemarker/ext/beans/else;",
        ">;"
    }
.end annotation


# static fields
.field private static final do:Lfreemarker/ext/beans/case$do;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lfreemarker/ext/beans/case$do;

    invoke-direct {v0}, Lfreemarker/ext/beans/case$do;-><init>()V

    sput-object v0, Lfreemarker/ext/beans/case$do;->do:Lfreemarker/ext/beans/case$do;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic do()Lfreemarker/ext/beans/case$do;
    .locals 1

    .line 1
    sget-object v0, Lfreemarker/ext/beans/case$do;->do:Lfreemarker/ext/beans/case$do;

    return-object v0
.end method


# virtual methods
.method public create(Lfreemarker/ext/beans/else;)Lfreemarker/ext/beans/try;
    .locals 2

    .line 1
    new-instance v0, Lfreemarker/ext/beans/try;

    const/4 v1, 0x1

    invoke-direct {v0, p1, v1}, Lfreemarker/ext/beans/try;-><init>(Lfreemarker/ext/beans/else;Z)V

    return-object v0
.end method
