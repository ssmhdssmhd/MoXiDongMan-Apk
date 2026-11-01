.class public Lfreemarker/template/utility/for;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lfreemarker/template/utility/for$try;,
        Lfreemarker/template/utility/for$for;,
        Lfreemarker/template/utility/for$case;,
        Lfreemarker/template/utility/for$if;,
        Lfreemarker/template/utility/for$new;
    }
.end annotation


# static fields
.field public static final break:Lfreemarker/template/TemplateHashModelEx;

.field public static final case:Lfreemarker/template/TemplateNumberModel;

.field public static final catch:Lfreemarker/template/TemplateHashModelEx2$KeyValuePairIterator;

.field public static final do:Lfreemarker/template/TemplateBooleanModel;

.field public static final else:Lfreemarker/template/TemplateModelIterator;

.field public static final for:Lfreemarker/template/TemplateScalarModel;

.field public static final goto:Lfreemarker/template/TemplateCollectionModel;

.field public static final if:Lfreemarker/template/TemplateBooleanModel;

.field public static final new:Lfreemarker/template/TemplateNumberModel;

.field public static final this:Lfreemarker/template/TemplateSequenceModel;

.field public static final try:Lfreemarker/template/TemplateNumberModel;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    sget-object v0, Lfreemarker/template/TemplateBooleanModel;->TRUE:Lfreemarker/template/TemplateBooleanModel;

    sput-object v0, Lfreemarker/template/utility/for;->do:Lfreemarker/template/TemplateBooleanModel;

    .line 2
    sget-object v0, Lfreemarker/template/TemplateBooleanModel;->FALSE:Lfreemarker/template/TemplateBooleanModel;

    sput-object v0, Lfreemarker/template/utility/for;->if:Lfreemarker/template/TemplateBooleanModel;

    .line 3
    sget-object v0, Lfreemarker/template/TemplateScalarModel;->EMPTY_STRING:Lfreemarker/template/TemplateModel;

    check-cast v0, Lfreemarker/template/TemplateScalarModel;

    sput-object v0, Lfreemarker/template/utility/for;->for:Lfreemarker/template/TemplateScalarModel;

    .line 4
    new-instance v0, Landroid/support/v4/az1;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/support/v4/az1;-><init>(I)V

    sput-object v0, Lfreemarker/template/utility/for;->new:Lfreemarker/template/TemplateNumberModel;

    .line 5
    new-instance v0, Landroid/support/v4/az1;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/support/v4/az1;-><init>(I)V

    sput-object v0, Lfreemarker/template/utility/for;->try:Lfreemarker/template/TemplateNumberModel;

    .line 6
    new-instance v0, Landroid/support/v4/az1;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/support/v4/az1;-><init>(I)V

    sput-object v0, Lfreemarker/template/utility/for;->case:Lfreemarker/template/TemplateNumberModel;

    .line 7
    new-instance v0, Lfreemarker/template/utility/for$new;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lfreemarker/template/utility/for$new;-><init>(Lfreemarker/template/utility/for$do;)V

    sput-object v0, Lfreemarker/template/utility/for;->else:Lfreemarker/template/TemplateModelIterator;

    .line 8
    new-instance v0, Lfreemarker/template/utility/for$if;

    invoke-direct {v0, v1}, Lfreemarker/template/utility/for$if;-><init>(Lfreemarker/template/utility/for$do;)V

    sput-object v0, Lfreemarker/template/utility/for;->goto:Lfreemarker/template/TemplateCollectionModel;

    .line 9
    new-instance v0, Lfreemarker/template/utility/for$case;

    invoke-direct {v0, v1}, Lfreemarker/template/utility/for$case;-><init>(Lfreemarker/template/utility/for$do;)V

    sput-object v0, Lfreemarker/template/utility/for;->this:Lfreemarker/template/TemplateSequenceModel;

    .line 10
    new-instance v0, Lfreemarker/template/utility/for$for;

    invoke-direct {v0, v1}, Lfreemarker/template/utility/for$for;-><init>(Lfreemarker/template/utility/for$do;)V

    sput-object v0, Lfreemarker/template/utility/for;->break:Lfreemarker/template/TemplateHashModelEx;

    .line 11
    new-instance v0, Lfreemarker/template/utility/for$try;

    invoke-direct {v0, v1}, Lfreemarker/template/utility/for$try;-><init>(Lfreemarker/template/utility/for$do;)V

    sput-object v0, Lfreemarker/template/utility/for;->catch:Lfreemarker/template/TemplateHashModelEx2$KeyValuePairIterator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
